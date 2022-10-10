// store href *before* reveal modifies it (adds hash of title slide)
const deckPathname = location.pathname;

// is the user generating a PDF?
const printMode = /print-pdf/gi.test(window.location.search);

// Fix some decker-specific things when slides are loaded
function onStart(deck) {
  fixAutoplayWithStart();
  fixLinks();
  currentDate();
  prepareTaskLists();
  prepareFullscreenIframes();
  prepareCodeHighlighting();
  deck.addEventListener("ready", () => {
    if (!printMode) {
      setTimeout(() => continueWhereYouLeftOff(deck), 500);
    }
    prepareFlashPanel(deck);
    preparePresenterMode(deck);
    Decker.addPresenterModeListener((on) => {
      if (on) {
        Decker.flash.message(
          `<span>Presenter Mode: <strong style="color:var(--accent3);">ON</strong></span>`
        );
      } else {
        Decker.flash.message(
          `<span>Presenter Mode: <strong style="color:var(--accent1);">OFF</strong></span>`
        );
      }
    });
  });
}

function fixAutoplayWithStart() {
  for (let vid of document.getElementsByTagName("video")) {
    vid.addEventListener("play", (e) => {
      const timeRegex = /#t=(\d+)/;
      const matches = e.target.currentSrc.match(timeRegex);
      if (matches !== null && matches.length > 0) {
        e.target.currentTime = matches[1];
      }
    });
  }
}

function fixLinks() {
  for (let a of document.querySelectorAll("a")) {
    if (!a.href) continue;
    // skip links in SVGs (e.g. MathJax)
    if (a.href.baseVal) continue;

    const url = new URL(a.href);

    // fix bibtex links
    if (url.hash && url.hash.startsWith("#/ref-")) {
      // find linked element
      let e = document.getElementById(url.hash.substring(2));
      if (e) {
        // find enclosing slide/section
        let s = e.closest("section");
        if (s && s.id) {
          // change hash to ID of section
          url.hash = "#" + s.id;
          a.href = url.href;
        }
      }
      continue;
    }

    // open all other links in new window/tab
    if (!a.target) {
      a.target = "_blank";
    }
  }
}

// Replace date string on title slide with current date
// if string provided for date in yaml header is "today"
function currentDate() {
  var date = document.querySelector(".date");
  if (!date) return;
  var dateString = date.textContent.trim();

  var today = new Date().toISOString().substr(0, 10);

  if (dateString === "today") {
    date.textContent = today;
  }
}

function prepareTaskLists() {
  for (let cb of document.querySelectorAll(
    '.reveal ul>li>input[type="checkbox"][disabled]'
  )) {
    const li = cb.parentElement;
    li.classList.add(cb.checked ? "task-yes" : "task-no");
    const ul = li.parentElement;
    ul.classList.add("task-list");
  }
}

// wrap iframe demos in a div that offers a fullscreen button.
// only do this if the browser supports the Fullscreen API.
// don't do this for Safari, since its webkit-prefixed version
// does not work properly: one cannot put an iframe to fullscreen
// if the slides are in fullscreen already (which is the standard
// presentation setting).
// we wrap the div in any case to make the css simpler.
function prepareFullscreenIframes() {
  for (let iframe of document.querySelectorAll("figure.iframe>iframe")) {
    // wrap div around iframe
    var parent = iframe.parentElement;
    var div = document.createElement("div");
    div.classList.add("fs-container");
    div.style.width = iframe.style.width || "100%";
    div.style.height = iframe.style.height || "100%";
    if (iframe.classList.contains("stretch")) {
      div.classList.add("stretch");
      iframe.classList.remove("stretch");
    }
    parent.insertBefore(div, iframe);
    div.appendChild(iframe);

    // iframe should be full width/height within div
    iframe.style.width = "100%";
    iframe.style.height = "100%";

    // if fullscreen API is not supported then don't add the button
    if (!div.requestFullscreen) continue;

    // add fullscreen button
    var btn = document.createElement("button");
    btn.classList.add("fs-button");
    btn.innerHTML =
      '<i class="fas fa-expand-arrows-alt" style="font-size:20px"></i>';
    div.btn = btn;
    div.appendChild(btn);

    // handle button click: enter/exit fullscreen
    btn.onclick = function () {
      var doc = window.document;
      var container = this.parentElement;
      if (doc.fullscreenElement == container) doc.exitFullscreen();
      else container.requestFullscreen();
    };

    // handle fullscreen change: adjust button icon
    div.onfullscreenchange = function () {
      var doc = window.document;
      this.btn.innerHTML =
        doc.fullscreenElement == this
          ? '<i class="fas fa-compress-arrows-alt"></i>'
          : '<i class="fas fa-expand-arrows-alt"></i>';
    };
  }
}

function prepareCodeHighlighting() {
  for (let code of document.querySelectorAll("pre>code")) {
    var pre = code.parentElement;

    // if line numbers to be highlighted are specified...
    if (pre.hasAttribute("data-line-numbers")) {
      // ...copy them from <pre> to <code>
      code.setAttribute(
        "data-line-numbers",
        pre.getAttribute("data-line-numbers")
      );
    }
    // otherwise, if we specified .line-numbers...
    else if (pre.classList.contains("line-numbers")) {
      // ...set empty attribute data-line-numbers,
      // so reveal adds line numbers w/o highlighting
      code.setAttribute("data-line-numbers", "");
    }

    // construct caption
    if (pre.hasAttribute("data-caption")) {
      var parent = pre.parentElement;
      var figure = document.createElement("figure");
      var caption = document.createElement("figcaption");
      var content = pre.getAttribute("data-caption");

      parent.insertBefore(figure, pre);
      figure.appendChild(pre);
      figure.appendChild(caption);
      caption.innerHTML = content.trim();
    }
  }
}

function createElement({
  type,
  id,
  classes,
  css,
  text,
  parent,
  onclick = null,
}) {
  let e = document.createElement(type);
  if (id) e.id = id;
  if (classes) e.className = classes;
  if (css) e.style = css;
  if (text) e.innerHTML = text;
  if (parent) parent.appendChild(e);
  if (onclick) e.addEventListener("click", onclick);
  return e;
}

function continueWhereYouLeftOff(deck) {
  // if *-deck.html was opened on the title slide,
  // and if user has visited this slide decks before,
  // then ask user whether to jump to slide where he/she left off

  if (localStorage) {
    // if we are on the first slide
    const slideIndex = deck.getIndices();
    if (slideIndex && slideIndex.h == 0 && slideIndex.v == 0) {
      // ...and previous slide index is stored (and not title slide)
      const storedIndex = JSON.parse(localStorage.getItem(deckPathname));
      if (storedIndex && storedIndex.h != 0) {
        // ...ask to jump to that slide

        const slideNumber = storedIndex.h + 1;

        // German or non-German?
        const lang = document.documentElement.lang;
        const german = lang == "de";

        let reveal = document.querySelector(".reveal");

        let dialog = createElement({
          type: "div",
          id: "continue-dialog",
          parent: reveal,
          text: german
            ? "Bei Folie " + slideNumber + " weitermachen?"
            : "Continue on slide " + slideNumber + "?",
        });

        let hideDialog = () => {
          dialog.style.display = "none";
        };

        let yes = createElement({
          type: "button",
          id: "continue-yes",
          parent: dialog,
          css: "font:inherit;",
          text: german ? "Ja" : "Yes",
          onclick: () => {
            deck.slide(storedIndex.h, storedIndex.v);
            hideDialog();
          },
        });

        let no = createElement({
          type: "button",
          id: "continue-no",
          parent: dialog,
          css: "font:inherit;",
          text: german ? "Nein" : "No",
          onclick: hideDialog,
        });

        // hide dialog after 5sec or on slide change
        setTimeout(hideDialog, 5000);
        deck.addEventListener("slidechanged", hideDialog);
      }
    }

    // add hook to store current slide's index
    window.addEventListener("beforeunload", () => {
      // if explain video is playing, stop it to switch to current slide
      if (deck.hasPlugin("explain")) {
        const explainPlugin = deck.getPlugin("explain");
        if (explainPlugin.isVideoPlaying()) {
          explainPlugin.stopVideo();
        }
      }
      // store current slide index in localStorage
      const slideIndex = deck.getIndices();
      if (slideIndex && slideIndex.h != 0) {
        // store current slide index (h- and v-index and fragment)
        localStorage.setItem(deckPathname, JSON.stringify(slideIndex));

        // store percentage of slides visited
        const idx = slideIndex.h + 1; // starts at 0
        const nSlides = deck.getTotalSlides();
        const percent = Math.round((100.0 * idx) / nSlides);
        const key = deckPathname + "-percentage";
        const percentBefore = localStorage.getItem(key);
        if (percent > percentBefore) {
          localStorage.setItem(key, percent);
        }
      }
    });
  }
}

function prepareFlashPanel(deck) {
  let pending = [];
  let interval = null;

  // This is why this needs to run after Reveal is ready.
  let revealElement = deck.getRevealElement();
  if (revealElement) {
    let panelHtml = `
  <div class="decker-flash-panel">
    <div class="content"> </div>
  </div>
  `;
    revealElement.insertAdjacentHTML("beforeend", panelHtml);

    let panel = revealElement.querySelector("div.decker-flash-panel");
    let content = revealElement.querySelector(
      "div.decker-flash-panel div.content"
    );

    let update = (msg) => {
      if (msg) {
        // One more message.
        if (interval) {
          pending.push(msg);
        } else {
          interval = setInterval(update, 1000);
          content.innerHTML = msg;
          panel.classList.add("flashing");
        }
      } else {
        // Called by interval timer. No new message.
        if (pending.length != 0) {
          content.innerHTML = pending.shift();
        } else {
          clearInterval(interval);
          interval = null;
          content.innerHTML = "";
          panel.classList.remove("flashing");
        }
      }
    };

    Decker.flash = {
      message: update,
    };
  } else {
    console.error(
      "Element is missing: getRevealElement (This is seriously wrong)"
    );
    Decker.flash = {
      message: console.log,
    };
  }
}

// Setup the presenter mode toggle key binding and notification machinery.
function preparePresenterMode(deck) {
  let presenterMode = false;
  let listeners = [];

  if (!Decker)
    throw "Global Decker object is missing. This is seriously wrong.";

  // This is why this needs to run after Reveal is ready.
  let revealElement = deck.getRevealElement();
  if (!revealElement)
    throw "Reveal slide element is missing. This is seriously wrong.";

  Decker.addPresenterModeListener = (callback) => {
    listeners.push(callback);
  };

  Decker.removePresenterModeListener = (callback) => {
    listeners.filter((cb) => cb !== callback);
  };

  Decker.isPresenterMode = (callback) => {
    return presenterMode;
  };

  deck.addKeyBinding(
    {
      keyCode: 80,
      key: "P",
      description: "Toggle Decker Presenter Mode (Triple Click)",
    },

    Decker.tripleClick(() => {
      presenterMode = !presenterMode;

      if (presenterMode) {
        revealElement.classList.add("presenter-mode");
      } else {
        revealElement.classList.remove("presenter-mode");
      }

      for (let callback of listeners) {
        callback(presenterMode);
      }
    })
  );
}

const Plugin = {
  id: "decker",
  init: (deck) => {
    return new Promise((resolve) => {
      onStart(deck);
      resolve();
    });
  },
};

export default Plugin;
