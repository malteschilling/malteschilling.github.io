[HorizontalRule
,Header 1 ("lernziel-der-vorlesung",[],[]) [Str "Lernziel",Space,Str "der",Space,Str "Vorlesung"]
,Para [Str "Die",Space,Str "Vorlesung",Space,Str "ist",Space,Str "als",Space,Str "Teil",Space,Str "der",Space,Str "Vorlesung",Space,Emph [Str "Algorithmen",Space,Str "und",Space,Str "Datenstrukturen"],Space,Str "konzipiert."]
,Para [Str "TODO"]
,RawBlock (Format "html") "<!-- ## Voraussetzungen\n\nInformatik I \8211 *Grundlagen der Programmierung* (grundlegende Programmierparadigma sind bekannt; Programmierung in funktionalen und objektorientierten Programmiersprachen).\n\nDazu aus der Vorlesung *Algorithmen und Datenstrukturen* wird die Einf\252hrung von grundlegenden Datenstrukturen (Listen, Arrays, B\228ume, ...) vorausgesetzt.\n\n## Ziel und Fokus {.fragment}\n\n**Lernziel** (aus der Modulbeschreibung): *\"Kosten von Berechnungen mathematisch zu modellieren und auszuwerten\"*.\n\nKonkret: \n\n* Kennen von Kriterien f\252r die Analyse.\n* Einordnung von Laufzeitanalysen in Komplexit\228tsklassen.\n\n### Fokus der Vorlesung:\n\nAuf Laufzeitanalyse von Algorithmen (average-case). -->"
,HorizontalRule
,Header 1 ("algorithmen",["section"],[("data-background-color","#2CA02C")]) [Str "Algorithmen"]
,HorizontalRule
,Header 1 ("recap-algorithmen",[],[]) [Str "Recap:",Space,Str "Algorithmen"]
,Div ("",["box","columns"],[])
 [Header 2 ("eigenschaften-von-algorithmen",[],[]) [Str "Eigenschaften",Space,Str "von",Space,Str "Algorithmen"]
 ,BulletList
  [[Plain [Emph [Str "Inputs"],Space,Str "(null",Space,Str "oder",Space,Str "mehr)"]]
  ,[Plain [Emph [Str "Outputs"],Space,Str "(einer",Space,Str "oder",Space,Str "mehr):",Space,Str "stehen",Space,Str "in",Space,Str "einem",Space,Str "bestimmten",Space,Str "Verh\228ltnis",Space,Str "zu",Space,Str "den",Space,Str "Inputs"]]
  ,[Plain [Emph [Str "Begrenztheit"],Str ":",Space,Str "Ein",Space,Str "Algorithmus",Space,Str "muss",Space,Str "nach",Space,Str "einer",Space,Str "endlichen",Space,Str "Anzahl",Space,Str "von",Space,Str "Schritten",Space,Str "enden."]]
  ,[Plain [Emph [Str "Eindeutigkeit"],Str ":",Space,Str "Jeder",Space,Str "Schritt",Space,Str "eines",Space,Str "Algorithmus",Space,Str "muss",Space,Str "genau",Space,Str "definiert",Space,Str "sein;",Space,Str "die",Space,Str "auszuf\252hrenden",Space,Str "Aktionen",Space,Str "m\252ssen",Space,Str "f\252r",Space,Str "jeden",Space,Str "Fall",Space,Str "streng",Space,Str "und",Space,Str "eindeutig",Space,Str "festgelegt",Space,Str "sein."]]
  ,[Plain [Emph [Str "Effektivit\228t"],Str ":",Space,Str "alle",Space,Str "seine",Space,Str "Operationen",Space,Str "sind",Space,Str "so",Space,Str "einfach,",Space,Str "dass",Space,Str "sie",Space,Str "genau",Space,Str "und",Space,Str "in",Space,Str "einer",Space,Str "endlichen",Space,Str "Zeitspanne",Space,Str "von",Space,Str "jemandem",Space,Str "mit",Space,Str "Bleistift",Space,Str "und",Space,Str "Papier",Space,Str "ausgef\252hrt",Space,Str "werden",Space,Str "k\246nnen."]]]]
,Div ("",["box","columns","definition","fragment"],[])
 [Header 2 ("definition-algorithmus",["definition"],[]) [Str "Definition",Space,Str "Algorithmus"]
 ,Para [Str "Ein",Space,Str "Algorithmus",Space,Str "ist",Space,Str "ein",Space,Str "wohldefinierter",Space,Str "Rechenvorgang,",Space,Str "der",Space,Str "einen",Space,Str "Wert",Space,Str "oder",Space,Str "eine",Space,Str "Reihe",Space,Str "von",Space,Str "Werten",Space,Str "als",Space,Str "Eingabe",Space,Str "annimmt",Space,Str "und",Space,Str "einen",Space,Str "Wert",Space,Str "oder",Space,Str "eine",Space,Str "Reihe",Space,Str "von",Space,Str "Werten",Space,Str "als",Space,Str "Ausgabe",Space,Str "erzeugt.",SoftBreak,Cite [Citation {citationId = "cormen2009", citationPrefix = [], citationSuffix = [], citationMode = NormalCitation, citationNoteNum = 1, citationHash = 0}] [Str "(Cormen",Space,Str "et",Space,Str "al.",Space,Str "2009)"]]]
,Div ("",["box","columns","footer"],[])
 [Header 2 ("section",["footer"],[]) []
 ,Para [Cite [Citation {citationId = "knuth97", citationPrefix = [], citationSuffix = [], citationMode = NormalCitation, citationNoteNum = 2, citationHash = 0}] [Str "(Knuth",Space,Str "1997)"]]]
,HorizontalRule
,Header 1 ("beispiel-sortieren",[],[]) [Str "Beispiel:",Space,Str "Sortieren"]
,Div ("",["box","columns"],[])
 [Header 2 ("problemstellung",[],[]) [Str "Problemstellung"]
 ,Para [Strong [Str "Eingabe"],Str ":",Space,Str "Sequenz",Space,Str "von",Space,Math InlineMath "n",Space,Str "nat\252rlichen",Space,Str "Zahlen",Space,Math InlineMath "[a_1, ..., a_n], a_i \\in \\mathbb{N}",SoftBreak,Str ",",Space,Str "z.B."]
 ,Para [Math DisplayMath "[8, 5, 2, 7, 1, 4, 3, 6]"]]
,Div ("",["box","columns","fragment"],[])
 [Header 2 ("section-1",[],[]) []
 ,Para [Strong [Str "Ausgabe"],Str ":",Space,Str "Geordnete",Space,Str "Ausgabesequenz",Space,Str "(Umordnung),",Space,Str "so",Space,Str "dass",Space,Math InlineMath "a_{\\pi_1} \\leq a_{\\pi_1} ... \\leq a_{\\pi_n}",Str ","]
 ,Para [Math DisplayMath "[1, 2, 3, 4, 5, 6, 7, 8]"]]
,Div ("",["box","columns","fragment"],[])
 [Header 2 ("algorithmen-1",[],[]) [Str "Algorithmen"]
 ,Para [Str "Quicksort,",Space,Str "Insertionsort"]]
,HorizontalRule
,Header 1 ("vergleich-von-algorithmen",[],[]) [Str "Vergleich",Space,Str "von",Space,Str "Algorithmen"]
,Para [Str "Zwei",Space,Str "Algorithmen",Space,Math InlineMath "ALG_A",Space,Str "und",Space,Math InlineMath "ALG_B",Space,Str "sind",Space,Str "f\252r",Space,Str "ein",Space,Str "Problem",Space,Str "gegeben.",Space,Str "Wie",Space,Str "vergleichen",Space,Str "wir",Space,Str "diese?",Space,Str "Was",Space,Str "sind",Space,Str "die",Space,Str "Kriterien",Space,Str "f\252r",Space,Str "eine",Space,Str "Analyse?"]
,Div ("",["incremental"],[])
 [BulletList
  [[Plain [Str "Korrektheit:",Space,Str "Pr\252fen,",Space,Str "ob",Space,Str "ein",Space,Str "Algorithmus",Space,Str "immer",Space,Str "die",Space,Str "korrekte",Space,Str "Ausgabe",Space,Str "f\252r",Space,Str "jede",Space,Str "Eingabe",Space,Str "liefert."]]
  ,[Plain [Str "Verst\228ndlichkeit"]]
  ,[Plain [Str "Effizienz:",Space,Str "Wieviel",Space,Str "Zeit",Space,Str "und",Space,Str "Speicherplatz",Space,Str "wird",Space,Str "ben\246tigt?"]
   ,BulletList
    [[Plain [Str "Laufzeit",Space,Str "der",Space,Str "Algorithmen"]]
    ,[Plain [Str "Speicher-Aufwand"]]]]]]
,Div ("",["box","columns","fragment"],[])
 [Header 2 ("vorannahme",[],[]) [Str "Vorannahme"]
 ,Para [Str "Wir",Space,Str "nehmen",Space,Str "Korrektheit",Space,Str "als",Space,Str "Voraussetzung",Space,Str "f\252r",Space,Str "die",Space,Str "weitere",Space,Str "Analyse",Space,Str "an.",LineBreak,Str "Unser",Space,Str "Fokus",Space,Str "in",Space,Str "der",Space,Str "heutigen",Space,Str "Vorlesung",Space,Str "liegt",Space,Str "auf",Space,Str "der",Space,Str "Laufzeit-Analyse",Space,Str "von",Space,Str "Algorithmen."]]
,HorizontalRule
,Header 1 ("beispiel-lineare-suche",[],[("layout","columns")]) [Str "Beispiel:",Space,Str "Lineare",Space,Str "Suche"]
,Div ("",["single-column-row"],[])
 [Div ("",["box","columns","top"],[])
  [Header 2 ("section-2",["top"],[]) []
  ,Para [Strong [Str "Eingabe:"],Space,Str "Das",Space,Str "zu",Space,Str "suchende",Space,Str "Element",Space,Math InlineMath "K",Space,Str "und",Space,Str "ein",Space,Str "Input-Array",Space,Math InlineMath "E",Space,Str "mit",Space,Math InlineMath "n > 0",Space,Str "Eintr\228gen."]]]
,Div ("",["multi-column-row","multi-column-row-3"],[])
 [Div ("",["grow-1","column","column-1"],[])
  [Div ("",["box","columns","left","fragment"],[])
   [Header 2 ("section-3",["left"],[]) []
   ,RawBlock (Format "html") "<img class=\"decker\" data-src=\"../data/algorithmen/waldo.jpg\" alt=\"waldo.jpg\" style=\"height:400px;\">"]]
 ,Div ("",["grow-2","column","column-2"],[("grow","2")])
  [Div ("",["box","columns","center","fragment"],[("grow","2")])
   [Header 2 ("section-4",["center"],[("grow","2")]) []
   ,RawBlock (Format "html") "<img class=\"decker\" data-src=\"../data/algorithmen/where_is_waldo.jpg\" alt=\"where_is_waldo.jpg\" style=\"width:512px;\">"]]
 ,Div ("",["grow-2","column","column-3"],[("grow","2")])
  [Div ("",["box","columns","right","fragment"],[("grow","2")])
   [Header 2 ("section-5",["right"],[("grow","2")]) []
   ,RawBlock (Format "html") "<img class=\"decker\" data-src=\"../data/algorithmen/there_is_waldo.jpg\" alt=\"there_is_waldo.jpg\" style=\"width:512px;\">"]]]
,Div ("",["single-column-row"],[])
 [Div ("",["box","columns","bottom","fragment"],[])
  [Header 2 ("section-6",["bottom"],[]) []
  ,Para [Strong [Str "Ausgabe:"],Space,Str "Antwort,",Space,Str "ob",Space,Str "oder",Space,Str "wo",Space,Math InlineMath "K",Space,Str "in",Space,Math InlineMath "E",Space,Str "enthalten",Space,Str "ist."]]]
,HorizontalRule
,Header 1 ("beispiel-lineare-suche-1",[],[]) [Str "Beispiel:",Space,Str "Lineare",Space,Str "Suche"]
,Para [Strong [Str "Eingabe:"],Space,Str "Das",Space,Str "zu",Space,Str "suchende",Space,Str "Element",Space,Math InlineMath "K",Space,Str "und",Space,Str "ein",Space,Str "Input-Array",Space,Math InlineMath "E",Space,Str "mit",Space,Math InlineMath "n > 0",Space,Str "Eintr\228gen."]
,Para [Math DisplayMath "K = 4, E=[8, 5, 2, 7, 1, 4, 3, 6]"]
,Div ("",["box","columns","fragment"],[])
 [Header 2 ("section-7",[],[]) []
 ,Para [Strong [Str "Ausgabe:"],Space,Str "Antwort,",Space,Str "ob",Space,Math InlineMath "K",Space,Str "in",Space,Math InlineMath "E",Space,Str "enthalten",Space,Str "ist."]
 ,Para [Math DisplayMath "\\text{True}"]]
,Div ("",["box","columns","fragment"],[])
 [Header 2 ("pseudocode",[],[]) [Str "Pseudocode"]
 ,CodeBlock ("",["java"],[("label","Python")]) "for (int index = 0; index < n; index++):\n    if (E[index] == K):\n        return true; // Element wurde gefunden\nreturn false; // Fall: wurde nicht gefunden"
 ,Para [LineBreak]
 ,Para [Str "Wir",Space,Str "wollen",Space,Str "nun",Space,Str "die",Space,Str "Laufzeit",Space,Str "bestimmen,",Space,Str "als",Space,Str "die",Space,Str "Zahl",Space,Str "notwendiger",Space,Str "Rechenschritte."]]
,HorizontalRule
,Header 1 ("laufzeitbestimmung",[],[("layout","columns")]) [Str "Laufzeitbestimmung"]
,Div ("",["single-column-row"],[])
 [Div ("",["box","columns","answer","top"],[])
  [Header 2 ("ziel-analyse",["answer","top"],[]) [Str "Ziel",Space,Str "Analyse"]
  ,Para [Str "Die",Space,Str "Beurteilung",Space,Str "der",Space,Str "Effizienz",Space,Str "eines",Space,Str "Algorithmus",Space,Str "soll",Space,Str "dabei",Space,Str "unabh\228ngig",Space,Str "sein",Space,Str "von"]
  ,BulletList
   [[Plain [Str "verwendeter",Space,Str "Hardware,",Space,Str "Computer,"]]
   ,[Plain [Str "Programmiersprache."]]]]]
,Div ("",["multi-column-row","multi-column-row-3"],[])
 [Div ("",["grow-2","column","column-1"],[("grow","2")])
  [Div ("",["box","columns","fragment","left"],[("grow","2")])
   [Header 2 ("abstraktes-modell-random-access-machine",["left"],[("grow","2")]) [Str "Abstraktes",Space,Str "Modell:",Space,Emph [Str "Random",Space,Str "Access",Space,Str "Machine"]]
   ,BulletList
    [[Plain [Str "Ein",Space,Strong [Str "Prozessor"],Space,Str "arbeitet",Space,Str "ein",Space,Str "Programm",Space,Str "sequentiell",Space,Str "ab."]]
    ,[Plain [Str "Alle",Space,Str "Daten",Space,Str "sind",Space,Strong [Str "direkt",Space,Str "zugreifbar"],Space,Str "im",Space,Str "Speicher",Space,Str "\8211",Space,Str "und",Space,Str "jeder",Space,Str "Speicherzugriff",Space,Str "dauert",Space,Str "gleich",Space,Str "lang."]]
    ,[Plain [Str "Jedes",Space,Str "Datum",Space,Str "pa\223t",Space,Str "in",Space,Str "eine",Space,Str "Speichereinheit."]]
    ,[Plain [Str "Primitive",Space,Str "Operationen",Space,Str "ben\246tigen",Space,Str "konstante",Space,Str "Zeit:"]
     ,BulletList
      [[Plain [Str "Zuweisung"]]
      ,[Plain [Str "arithmetische",Space,Str "und",Space,Str "logische",Space,Str "Operationen",LineBreak]]
      ,[Plain [Str "Vergleichsoperationen"]]
      ,[Plain [Str "Ablaufsteuerung"]]]]]]]
 ,Div ("",["grow-1","column","column-3"],[])
  [Div ("",["box","columns","fragment","right"],[])
   [Header 2 ("section-8",["right"],[]) []
   ,RawBlock (Format "html") "<img class=\"decker\" data-src=\"../data/algorithmen/yanofsky_algorithm.png\" alt=\"yanofsky_algorithm.png\" style=\"height:420px;\">"]]]
,Div ("",["single-column-row"],[])
 [Div ("",["box","columns","footer","bottom"],[])
  [Header 2 ("section-9",["footer","bottom"],[]) []
  ,Para [Cite [Citation {citationId = "yanofsky2010", citationPrefix = [], citationSuffix = [], citationMode = NormalCitation, citationNoteNum = 3, citationHash = 0}] [Str "(Yanofsky",Space,Str "2010)"]]]]
,HorizontalRule
,Header 1 ("elementare-operationen",[],[]) [Str "Elementare",Space,Str "Operationen"]
,Para [Str "Wir",Space,Str "sind",Space,Str "in",Space,Str "der",Space,Str "Analyse",Space,Str "nicht",Space,Str "interessiert",Space,Str "an",Space,Str "der",Space,Str "exakten",Space,Str "Zahl",Space,Str "von",Space,Str "Rechenschritten",Space,Str "oder",Space,Str "Operationen."]
,Para [Str "F\252r",Space,Str "die",Space,Str "Analyse",Space,Str "legen",Space,Str "wir",Space,Str "elementare",Space,Str "Operationen",Space,Str "fest,",Space,Str "z.B."]
,BulletList
 [[Plain [Str "Vergleich",Space,Str "von",Space,Str "zwei",Space,Str "Zahlen",Space,Str "bei",Space,Str "der",Space,Str "linearen",Space,Str "Suche",Space,Str "oder",Space,Str "beim",Space,Str "Sortieren"]]
 ,[Plain [Str "Anzahl",Space,Str "von",Space,Str "Multiplikationen",Space,Str "bei",Space,Str "Matrixmultiplikation"]]]
,Div ("",["box","columns","answer","fragment"],[])
 [Header 2 ("elementare-operationen-1",["answer"],[]) [Str "Elementare",Space,Str "Operationen"]
 ,BulletList
  [[Plain [Str "Anzahl",Space,Str "elementare",Space,Str "Operationen",Space,Str "soll",Space,Str "gut",Space,Str "die",Space,Str "Gesamtzahl",Space,Str "Operationen",Space,Str "absch\228tzen."]]
  ,[Plain [Str "Anzahl",Space,Str "der",Space,Str "elementaren",Space,Str "Operationen",Space,Str "wird",Space,Str "als",Space,Str "Basis",Space,Str "f\252r",Space,Str "die",Space,Str "Bestimmung",Space,Str "des",Space,Str "Wachstums",Space,Str "der",Space,Str "Zeitkomplexit\228t",Space,Str "genommen."]]]]
,HorizontalRule
,Header 1 ("abh\228ngigkeit-der-laufzeit-von-eingabegr\246\223e",[],[("layout","columns")]) [Str "Abh\228ngigkeit",Space,Str "der",Space,Str "Laufzeit",Space,Str "von",Space,Str "Eingabegr\246\223e"]
,Div ("",["single-column-row"],[])
 [Div ("",["box","columns","top"],[])
  [Header 2 ("section-10",["top"],[]) []
  ,Para [Str "Ferner",Space,Str "h\228ngt",Space,Str "die",Space,Str "Laufzeit",Space,Str "auch",Space,Str "von",Space,Str "der",Space,Str "Eingabegr\246\223e",Space,Str "ab."]]]
,Div ("",["multi-column-row","multi-column-row-3"],[])
 [Div ("",["grow-1","column","column-1"],[])
  [Div ("",["box","columns","left","fragment"],[])
   [Header 2 ("kleiner-suchraum",["left"],[]) [Str "Kleiner",Space,Str "Suchraum"]
   ,RawBlock (Format "html") "<img class=\"decker\" data-src=\"../data/algorithmen/waldo_social_distancing.jpg\" alt=\"waldo_social_distancing.jpg\" style=\"width:640px;\">"]]
 ,Div ("",["grow-1","column","column-3"],[])
  [Div ("",["box","columns","right","fragment"],[])
   [Header 2 ("gro\223er-suchraum",["right"],[]) [Str "Gro\223er",Space,Str "Suchraum"]
   ,RawBlock (Format "html") "<img class=\"decker\" data-src=\"../data/algorithmen/wheres_waldo.jpg\" alt=\"wheres_waldo.jpg\" style=\"width:640px;\">"]]]
,Div ("",["single-column-row"],[])
 [Div ("",["box","columns","bottom","footer"],[])
  [Header 2 ("section-11",["bottom","footer"],[]) []
  ,Para [Str "https://mymodernmet.com/wheres-waldo-social-distancing-cartoon/"]]]
,HorizontalRule
,Header 1 ("effizienz-von-algorithmen",["section"],[("data-background-color","#2CA02C")]) [Str "Effizienz",Space,Str "von",Space,Str "Algorithmen"]
,HorizontalRule
,Header 1 ("begriff-der-laufzeit",[],[("layout","columns")]) [Str "Begriff",Space,Str "der",Space,Str "Laufzeit"]
,Div ("",["multi-column-row","multi-column-row-3"],[])
 [Div ("",["grow-1","column","column-1"],[])
  [Div ("",["box","columns","left","definition"],[])
   [Header 2 ("laufzeit",["left","definition"],[]) [Str "Laufzeit"]
   ,Para [Str "Wir",Space,Str "betrachten",Space,Str "die",Space,Str "Laufzeit"]
   ,BulletList
    [[Plain [Str "als",Space,Str "Funktion",Space,Str "\252ber",Space,Str "die",Space,Str "Eingabegr\246\223e,",Space,Str "Eingabel\228nge"]]
    ,[Plain [Str "bezogen",Space,Str "auf",Space,Str "serielle",Space,Str "Maschinen"]]
    ,[Plain [Str "und",Space,Str "damit",Space,Str "abstrahierend",Space,Str "\252ber",Space,Str "konkreter",Space,Str "Zeitdauer",Space,Str "und",Space,Str "stattdessen",Space,Str "bezogen",Space,Str "auf",Space,Str "eine",Space,Str "festgelegte",Space,Str "elementare",Space,Str "Operation."]]]]]
 ,Div ("",["grow-1","column","column-3"],[])
  [Div ("",["box","columns","right"],[])
   [Header 2 ("section-12",["right"],[]) []
   ,RawBlock (Format "html") "<img class=\"decker\" data-src=\"../data/algorithmen/schranken.png\" alt=\"schranken.png\" style=\"height:400px;\">"]]]
,Div ("",["single-column-row"],[])
 [Div ("",["box","columns","bottom","footer"],[])
  [Header 2 ("section-13",["bottom","footer"],[]) []
  ,Para [Cite [Citation {citationId = "katoen2020", citationPrefix = [], citationSuffix = [], citationMode = NormalCitation, citationNoteNum = 4, citationHash = 0}] [Str "(Katoen",Space,Str "2020)"]]]]
,HorizontalRule
,Header 1 ("analyse-der-laufzeit-von-algorithmen",[],[("layout","columns")]) [Str "Analyse",Space,Str "der",Space,Str "Laufzeit",Space,Str "von",Space,Str "Algorithmen"]
,Div ("",["single-column-row"],[])
 [Div ("",["box","columns","answer","top"],[])
  [Header 2 ("section-14",["answer","top"],[]) []
  ,Para [Math InlineMath "D_n =",Space,Str "Menge",Space,Str "aller",Space,Str "Eingaben",Space,Str "der",Space,Str "La\776nge",Space,Math InlineMath "n"]
  ,Para [Math InlineMath "t(I) =",Space,Str "fu\776r",Space,Str "Eingabe",Space,Math InlineMath "I",Space,Str "beno\776tigte",Space,Str "Anzahl",Space,Str "elementarer",Space,Str "Operationen"]]
 ,Div ("",["box","columns","fragment"],[])
  [Header 2 ("beispiel-lineare-suche-2",[],[]) [Str "Beispiel",Space,Str "lineare",Space,Str "Suche"]
  ,Header 3 ("elementare-operation-vergleich-einer-zahl-k-mit-dem-element-eindex",[],[]) [Str "Elementare",Space,Str "Operation:",Space,Str "Vergleich",Space,Str "einer",Space,Str "Zahl",Space,Math InlineMath "K",Space,Str "mit",Space,Str "dem",Space,Str "Element",Space,Math InlineMath "E[index]"]]]
,Div ("",["multi-column-row","multi-column-row-3"],[])
 [Div ("",["grow-1","column","column-1"],[])
  [Div ("",["box","columns","left","fragment"],[])
   [Header 2 ("inputs",["left"],[]) [Str "Inputs:"]
   ,Para [RawInline (Format "tex") "\\begin{eqnarray*} \nK &=& 4 \\\\\nD_8 &=& \\{[8, 5, 2, 7, 1, 4, 3, 6], \\\\\n&&[1, 2, 3, 4, 5, 6, 7, 8], ...\\}\n\\end{eqnarray*}"]]
  ,Div ("",["box","columns","fragment"],[])
   [Header 2 ("output-true",[],[]) [Str "Output:",Space,Math InlineMath "True"]]]
 ,Div ("",["grow-2","column","column-3"],[("grow","2")])
  [Div ("",["box","columns","right","fragment"],[("grow","2")])
   [Header 2 ("algorithmus",["right"],[("grow","2")]) [Str "Algorithmus"]
   ,CodeBlock ("",["python"],[("label","Python")]) "for (int index = 0; index < n; index++):\n    if (E[index] == K):\n        return true; // Element wurde gefunden\nreturn false; // Fall: wurde nicht gefunden"
   ,Para [LineBreak]]]]
,Div ("",["single-column-row"],[])
 [Div ("",["box","columns","bottom","fragment"],[])
  [Header 2 ("laufzeit-1",["bottom"],[]) [Str "Laufzeit"]
  ,Para [Str "F\252r",Space,Str "jeden",Space,Str "Input",Space,Str "individuell",Space,Str "nun",Space,Str "bestimmbar."]]]
,HorizontalRule
,Header 1 ("w\228hlen-von-bestimmten-instanzen-best-case-fall",[],[("layout","columns")]) [Str "W\228hlen",Space,Str "von",Space,Str "bestimmten",Space,Str "Instanzen:",Space,Str "Best-Case",Space,Str "Fall"]
,Div ("",["single-column-row"],[])
 [Div ("",["box","columns","definition","top"],[])
  [Header 2 ("best-case-szenario",["definition","top"],[]) [Str "Best-Case",Space,Str "Szenario"]
  ,Para [Str "Gegeben",Space,Str "durch",Space,Str "die",Space,Str "minimal",Space,Str "ben\246tigte",Space,Str "Anzahl",Space,Str "von",Space,Str "Operationen",Space,Str "f\252r",Space,Str "eine",Space,Str "Eingabe",Space,Str "der",Space,Str "L\228nge",Space,Math InlineMath "n",Str ":"]
  ,Para [Math DisplayMath " B(n) = \\min( t(I) | I \\in D_n) "]]]
,Div ("",["multi-column-row","multi-column-row-3"],[])
 [Div ("",["grow-1","column","column-1"],[])
  [Div ("",["box","columns","left","fragment"],[])
   [Header 2 ("beispiel",["left"],[]) [Str "Beispiel"]
   ,Para [Str "Wir",Space,Str "suchen",Space,Str "ein",Space,Str "Element",Space,Str "von",Space,Math InlineMath "D_n",Str ",",Space,Str "f\252r",Space,Str "das",Space,Math InlineMath "\\min( t(I) | I \\in D_n)",Str "."]
   ,Para [Str "Input:",Space,Math InlineMath "K = 4, D_8 = \\{[8, 5, 2, 7, 1, 4, 3, 6], [1, 2, 3, 4, 5, 6, 7, 8], ...\\}"]
   ,CodeBlock ("",["python"],[("label","Python")]) "for (int index = 0; index < n; index++):\n    if (E[index] == K):\n        return true; // Element wurde gefunden\nreturn false; // Fall: wurde nicht gefunden"]]]
,Div ("",["single-column-row"],[])
 [Div ("",["box","columns","bottom","fragment"],[])
  [Header 2 ("section-15",["bottom"],[]) []
  ,Para [Str "F\252r",Space,Math InlineMath "I = [4, 1, 2, 3, 5, 6, 7, 8] \\in D_8",Space,Str "ben\246tigen",Space,Str "wir",Space,Math InlineMath "t(I)=1",Space,Str "Vergleich."]
  ,Para [Str "Allgemein:",Space,Str "Mit",Space,Math InlineMath "I = [K, ...]",Space,Str "bleibt",Space,Math InlineMath "t(I)=1",Space,Str "konstant.",Space,Str "Und",Space,Str "damit",Space,Str "ist",Space,Math InlineMath "B(n) = 1",Str "."]]]
,HorizontalRule
,Header 1 ("w\228hlen-von-bestimmten-instanzen-worst-case-fall",[],[]) [Str "W\228hlen",Space,Str "von",Space,Str "bestimmten",Space,Str "Instanzen:",Space,Str "Worst-Case",Space,Str "Fall"]
,Div ("",["box","columns","definition","fragment"],[])
 [Header 2 ("worst-case-szenario",["definition"],[]) [Str "Worst-Case",Space,Str "Szenario"]
 ,Para [Str "Gegeben",Space,Str "durch",Space,Str "die",Space,Str "maximal",Space,Str "ben\246tigte",Space,Str "Anzahl",Space,Str "von",Space,Str "Operationen",Space,Str "f\252r",Space,Str "eine",Space,Str "Eingabe",Space,Str "der",Space,Str "L\228nge",Space,Math InlineMath "n",Str "."]
 ,Para [Math DisplayMath " W(n) = \\max( t(I) | I \\in D_n) "]]
,Div ("",["box","columns","left","fragment"],[])
 [Header 2 ("beispiel-1",["left"],[]) [Str "Beispiel"]
 ,Para [Str "Wir",Space,Str "suchen",Space,Str "ein",Space,Str "Element",Space,Str "von",Space,Math InlineMath "D_n",Str ",",Space,Str "f\252r",Space,Str "das",Space,Math InlineMath "\\min( t(I) | I \\in D_n)",Str "."]
 ,Para [Str "Input:",Space,Math InlineMath "K = 4, D_8 = \\{[8, 5, 2, 7, 1, 4, 3, 6], [1, 2, 3, 4, 5, 6, 7, 8], ...\\}"]
 ,CodeBlock ("",["python"],[("label","Python")]) "for (int index = 0; index < n; index++):\n    if (E[index] == K):\n        return true; // Element wurde gefunden\nreturn false; // Fall: wurde nicht gefunden"]
,Div ("",["box","columns","bottom","fragment"],[])
 [Header 2 ("section-16",["bottom"],[]) []
 ,Para [Str "F\252r",Space,Math InlineMath "I = [1, 2, 3, 5, 6, 7, 8, 4] \\in D_8",Space,Str "ben\246tigen",Space,Str "wir",Space,Math InlineMath "t(I)=8",Space,Str "Vergleich."]
 ,Para [Str "Allgemein:",Space,Str "Mit",Space,Math InlineMath "I = [..., K]",Space,Str "ben\246tigen",Space,Str "wir",Space,Math InlineMath "t(I)=n",Space,Str "Vergleiche.",Space,Str "Und",Space,Str "damit",Space,Str "ist",Space,Math InlineMath "W(n) = n",Str "."]]
,HorizontalRule
,Header 1 ("einschub-erwartungswert",[],[("layout","columns")]) [Str "Einschub:",Space,Str "Erwartungswert"]
,Div ("",["single-column-row"],[])
 [Div ("",["box","columns","definition","top"],[])
  [Header 2 ("erwartungswert",["definition","top"],[]) [Str "Erwartungswert"]
  ,Para [Math DisplayMath "\nE(X) = x_1 * P(X = x_1) + x_2 * P(X = x_2) + ... + x_N * P(X = x_N) = \\sum_{i=1}^n x_i P(X = x_i)\n",SoftBreak,Str "mit",Space,Math InlineMath "X",Space,Str "Zufallsvariable,",Space,Math InlineMath "x_i",Space,Str "sind",Space,Str "die",Space,Str "Auspr\228gungen",Space,Str "der",Space,Str "Variable",Space,Str "und",Space,Math InlineMath "P(X = x_i)",Space,Str "jeweils",Space,Str "die",Space,Str "dazugeh\246rende",Space,Str "Wahrscheinlichkeit."]]]
,Div ("",["multi-column-row","multi-column-row-3"],[])
 [Div ("",["grow-1","column","column-1"],[])
  [Div ("",["box","columns","fragment","left"],[])
   [Header 2 ("beispiel-2-facher-m\252nzwurf",["left"],[]) [Str "Beispiel:",Space,Str "2-facher",Space,Str "M\252nzwurf"]
   ,Para [Str "Bei",Space,Str "einem",Space,Str "Gl\252cksspiel",Space,Str "wird",Space,Str "eine",Space,Str "M\252nze",Space,Str "zweimal",Space,Str "hintereinander",Space,Str "geworfen.",Space,Str "Wenn",Space,Str "einmal",Space,Emph [Str "Kopf"],Space,Str "erscheint,",Space,Str "gewinnen",Space,Str "wir",Space,Math InlineMath "1",Space,Str "Euro,",Space,Str "wenn",Space,Str "beidemale",Space,Emph [Str "Kopf"],Space,Str "erscheint,",Space,Str "gewinnen",Space,Str "wir",Space,Math InlineMath "5",Space,Str "Euro.",Space,Str "Wie",Space,Str "hoch",Space,Str "ist",Space,Str "unser",Space,Str "erwarteter",Space,Str "Gewinn,",Space,Str "wenn",Space,Str "wir",Space,Str "einmal",Space,Str "spielen?"]]]
 ,Div ("",["grow-1","column","column-3"],[])
  [Div ("",["box","columns","fragment","right"],[])
   [Header 2 ("section-17",["right"],[]) []
   ,Para [Str "Wir",Space,Str "haben",Space,Str "vier",Space,Str "m\246gliche",Space,Str "Ausg\228nge:"]
   ,Table ("",[],[]) (Caption Nothing
    [])
    [(AlignDefault,ColWidthDefault)
    ,(AlignCenter,ColWidthDefault)
    ,(AlignCenter,ColWidthDefault)
    ,(AlignCenter,ColWidthDefault)
    ,(AlignCenter,ColWidthDefault)]
    (TableHead ("",[],[])
    [Row ("",[],[])
     [Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
      []
     ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
      [Plain [Math InlineMath "x_1"]]
     ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
      [Plain [Math InlineMath "x_2"]]
     ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
      [Plain [Math InlineMath "x_3"]]
     ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
      [Plain [Math InlineMath "x_4"]]]])
    [(TableBody ("",[],[]) (RowHeadColumns 0)
     []
     [Row ("",[],[])
      [Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
       []
      ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
       []
      ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
       []
      ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
       []
      ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
       []]
     ,Row ("",[],[])
      [Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
       [Plain [Str "Abfolge"]]
      ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
       [Plain [Math InlineMath "[K,K]"]]
      ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
       [Plain [Math InlineMath "[K,Z]"]]
      ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
       [Plain [Math InlineMath "[Z,K]"]]
      ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
       [Plain [Math InlineMath "[Z,Z]"]]]
     ,Row ("",[],[])
      [Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
       [Plain [Str "WK",Space,Math InlineMath "P(x_i)"]]
      ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
       [Plain [Math InlineMath "\\frac{1}{4}"]]
      ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
       [Plain [Math InlineMath "\\frac{1}{4}"]]
      ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
       [Plain [Math InlineMath "\\frac{1}{4}"]]
      ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
       [Plain [Math InlineMath "\\frac{1}{4}"]]]
     ,Row ("",[],[])
      [Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
       [Plain [Str "Gewinn"]]
      ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
       [Plain [Math InlineMath "5"]]
      ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
       [Plain [Math InlineMath "1"]]
      ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
       [Plain [Math InlineMath "1"]]
      ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
       [Plain [Math InlineMath "0"]]]])]
    (TableFoot ("",[],[])
    [])]]]
,Div ("",["single-column-row"],[])
 [Div ("",["box","columns","fragment","bottom"],[])
  [Header 2 ("erwartungswert-1",["bottom"],[]) [Str "Erwartungswert"]
  ,Para [Math DisplayMath "E(X) = \\sum_{i=1}^4 x_i P(X = x_i) = \\frac{1}{4} * 5 + \\frac{1}{4} * 1 + \\frac{1}{4} * 1 + \\frac{1}{4} * 0 = \\frac{7}{4}"]]]
,HorizontalRule
,Header 1 ("analyse-f\252r-den-erwarteten-fall",[],[]) [Str "Analyse",Space,Str "f\252r",Space,Str "den",Space,Str "erwarteten",Space,Str "Fall"]
,Div ("",["box","columns","definition"],[])
 [Header 2 ("average-case-szenario",["definition"],[]) [Str "Average-Case",Space,Str "Szenario"]
 ,Para [Str "Die",Space,Str "Average-Case",Space,Str "Laufzeit",Space,Str "ist",Space,Str "die",Space,Str "von",Space,Str "dem",Space,Str "Algorithmus",Space,Str "durchschnittlich",Space,Str "beno\776tigte",Space,Str "Anzahl",Space,Str "elementarer",Space,Str "Operationen",Space,Str "auf",Space,Str "einer",Space,Str "beliebigen",Space,Str "Eingabe",Space,Str "der",Space,Str "La\776nge",Space,Math InlineMath "n",Str "."]
 ,Para [Math DisplayMath "A(n) = \\sum_{I \\in D_N} P(I) * t(I)"]
 ,Para [Math InlineMath "P(I) =",Space,Str "Wahrscheinlichkeit,",Space,Str "dass",Space,Str "Eingabe",Space,Math InlineMath "I",Space,Str "auftritt"]]
,HorizontalRule
,Header 1 ("analyse-f\252r-die-lineare-suche",[],[]) [Str "Analyse",Space,Str "f\252r",Space,Str "die",Space,Str "Lineare",Space,Str "Suche"]
,Div ("",["box","columns"],[])
 [Header 2 ("elementare-operation",[],[]) [Str "Elementare",Space,Str "Operation"]
 ,Para [Str "Vergleich",Space,Str "einer",Space,Str "Zahl",Space,Math InlineMath "K",Space,Str "mit",Space,Str "dem",Space,Str "Element",Space,Math InlineMath "E[index]",Space,Str "aus",Space,Str "z.B.",Space,Math InlineMath "E = [8, 5, 2, 7, 1, 4, 3, 6]",Str "."]
 ,Para [LineBreak]]
,Div ("",["box","columns","fragment"],[])
 [Header 2 ("menge-aller-m\246glichen-eingaben",[],[]) [Str "Menge",Space,Str "aller",Space,Str "m\246glichen",Space,Str "Eingaben"]
 ,Para [Math InlineMath "D_n",Space,Str "ist",Space,Str "die",Space,Str "Menge",Space,Str "aller",Space,Str "m\246glichen",Space,Str "Eingabelisten",Space,Str "von",Space,Math InlineMath "n",Space,Str "ganzen",Space,Str "Zahlen",Space,Str "(alle",Space,Str "Permutationen),",Space,Str "die",Space,Str "urspru\776nglich",Space,Str "aus",Space,Str "einer",Space,Str "Menge",Space,Math InlineMath "N > n",Space,Str "ganzer",Space,Str "Zahlen",Space,Str "ausgewa\776hlt",Space,Str "wurden."]
 ,Para [LineBreak]]
,Div ("",["box","columns","fragment"],[])
 [Header 2 ("zeitkomplexit\228t",[],[]) [Str "Zeitkomplexit\228t"]
 ,BulletList
  [[Plain [Math InlineMath "W (n) = n",Str ",",Space,Str "da",Space,Math InlineMath "n",Space,Str "Vergleiche",Space,Str "notwendig",Space,Str "f\252r",Space,Str "den",Space,Str "Fall,",Space,Str "das",Space,Str "die",Space,Str "ganze",Space,Str "Liste",Space,Str "durchlaufen",Space,Str "werden",Space,Str "muss",Space,Str "(Element",Space,Str "nicht",Space,Str "enthalten",Space,Str "oder",Space,Math InlineMath "K == E[n]"]]
  ,[Plain [Math InlineMath "B(n) = 1",Str ",",Space,Str "da",Space,Str "ein",Space,Str "Vergleich",Space,Str "ausreicht,",Space,Str "wenn",Space,Math InlineMath "K == E[1]",Space,Str "ist."]]]
 ,Div ("",["incremental"],[])
  [BulletList
   [[Plain [Math InlineMath "A(n) \\approx \\frac{1}{2} n",Space,Math InlineMath "\\color{red}{?}",Space,Str "\8211",Space,Str "nur,",Space,Str "wenn",Space,Math InlineMath "K",Space,Str "in",Space,Math InlineMath "E",Space,Str "enthalten",Space,Str "und",Space,Str "abh\228ngig",Space,Str "von",Space,Str "der",Space,Str "Verteilung",Space,Str "der",Space,Str "Elemente",Space,Str "(Gegenbeispiel:",Space,Str "Sprache)."]]]]]
,HorizontalRule
,Header 1 ("average-case-f\252r-lineare-suche",[],[]) [Str "Average-Case",Space,Str "f\252r",Space,Str "lineare",Space,Str "Suche"]
,Para [Str "Erwartungswert:",Space,Math InlineMath "\\frac{n}{2}",Space,Str "erscheint",Space,Str "intuitiv,",Space,Str "ist",Space,Str "aber",Space,Str "abh\228ngig",Space,Str "davon,",Space,Str "ob",Space,Str "das",Space,Str "Element",Space,Str "enthalten",Space,Str "ist."]
,Div ("",["box","columns"],[])
 [Header 2 ("unterscheidung-zwei-f\228lle",[],[]) [Str "Unterscheidung",Space,Str "zwei",Space,Str "F\228lle"]
 ,BulletList
  [[Plain [Math InlineMath "K",Space,Str "kommt",Space,Str "in",Space,Math InlineMath "E",Space,Str "vor",Space,Str "oder"]]
  ,[Plain [Math InlineMath "K",Space,Str "kommt",Space,Str "nicht",Space,Str "in",Space,Math InlineMath "E",Space,Str "vor."]]]]
,Div ("",["box","columns"],[])
 [Header 2 ("section-18",[],[]) []
 ,CodeBlock ("",["java"],[("label","Python")]) "for (int index = 0; index < n; index++):\n    if (E[index] == K):\n        return true; // Oder: index ausgeben\nreturn false; // Fall nicht gefunden"]
,HorizontalRule
,Header 1 ("average-case-f\252r-lineare-suche-wenn-k-in-e-enthalten-ist",[],[]) [Str "Average-Case",Space,Str "f\252r",Space,Str "lineare",Space,Str "Suche",Space,Str "wenn",Space,Math InlineMath "K",Space,Str "in",Space,Math InlineMath "E",Space,Str "enthalten",Space,Str "ist"]
,Div ("",["incremental"],[])
 [BulletList
  [[Plain [Str "Annahme:",Space,Str "alle",Space,Str "Elemente",Space,Str "in",Space,Math InlineMath "E",Space,Str "sind",Space,Str "unterschiedlich",Space,Str "und",Space,Math InlineMath "\\color{red}\\text{gleich wahrscheinlich}",Space,Str "verteilt."]]
  ,[Plain [Str "Dann",Space,Str "ist",Space,Str "die",Space,Str "Wahrscheinlichkeit",Space,Str "fu\776r",Space,Math InlineMath "K == E[i]: \\color{red}P(K == E[i])= \\frac{1}{n}"]]
  ,[Plain [Str "Die",Space,Str "Anzahl",Space,Str "beno\776tigter",Space,Str "Vergleiche",Space,Str "im",Space,Str "Fall",Space,Math InlineMath "K == E[i]",Space,Str "ist",Space,Math InlineMath "t(E)=\\color{green}i + 1",Space,Str "f\252r",Space,Math InlineMath "i \\geq 0",Str "."]]]]
,Div ("",["box","columns","fragment"],[])
 [Header 2 ("damit-ergibt-sich-als-average-case",[],[]) [Str "Damit",Space,Str "ergibt",Space,Str "sich",Space,Str "als",Space,Str "average-case:"]
 ,Para [Span ("",["math-incremental"],[]) [Math DisplayMath "\n\\begin{eqnarray*} \nA_{K \\in E} (n) &=& \\sum_{i=0}^{n-1} \\color{red}P(K == E[i] | \\text{K in E})\\color{black} * \\color{green}t(K == E[i]) \\\\\n&=& \\sum_{i=0}^{n-1} \\color{red}\\left( \\frac{1}{n} \\right)\\color{black} * \\color{green}(i+1) \\\\\n&=& \\color{red}\\left( \\frac{1}{n} \\right) \\color{darkorange}\\sum_{i=0}^{n-1} (i+1) \\\\\n&=& \\left( \\frac{1}{n} \\right) * \\color{darkorange}\\frac{n(n+1)}{2} \\\\\n\\color{blue}A_{K \\in E} (n) &\\color{blue}=& \\color{blue}\\frac{n+1}{2}\n\\end{eqnarray*}\n"]]]
,HorizontalRule
,Header 1 ("average-case-f\252r-lineare-suche-1",[],[]) [Str "Average",Space,Str "Case",Space,Str "f\252r",Space,Str "lineare",Space,Str "Suche"]
,Div ("",["box","columns"],[])
 [Header 2 ("insgesamt-ergibt-sich-damit",[],[]) [Str "Insgesamt",Space,Str "ergibt",Space,Str "sich",Space,Str "damit:"]
 ,Para [Span ("",["math-incremental"],[]) [Math DisplayMath "\n\\begin{eqnarray*} \nA(n) &=& P(\\text{K in E}) * \\color{blue}A_{K \\in E}(n) \\color{black}+ P(\\text{K nicht in E}) * A_{K \\notin E}(n) \\\\\n&=& P(\\text{K in E}) \\color{blue}\\frac{n+1}{2}\\color{black} + \\color{red}P(\\text{K nicht in E})\\color{black} * A_{K \\notin E}(n) \\\\\n&=& P(\\text{K in E}) \\frac{n+1}{2} + \\color{red}(1 - P(\\text{K in E}))\\color{black} * \\color{green}A_{K \\notin E}(n) \\\\\n&=& P(\\text{K in E}) \\frac{n+1}{2} + (1 - P(\\text{K in E})) * \\color{green}n \\\\\n&=& P(\\text{K in E}) \\frac{-n+1}{2} + n \n\\end{eqnarray*}\n"]]]
,Div ("",["box","columns","fragment"],[])
 [Header 2 ("beispiele",[],[]) [Str "Beispiele"]
 ,Para [Str "F\252r",Space,Math InlineMath "P(\\text{K in E})"]
 ,Div ("",["incremental"],[])
  [BulletList
   [[Plain [Math InlineMath "= 1:",Space,Math InlineMath "A(n) = \\frac{n+1}{2}",Str ",",Space,Str "wie",Space,Str "vorher",Space,Str "hergeleitet."]]
   ,[Plain [Math InlineMath "= 0:",Space,Math InlineMath "A(n) = n = W(n)",Str ",",Space,Str "da",Space,Math InlineMath "E",Space,Str "komplett",Space,Str "\252berpr\252ft",Space,Str "werden",Space,Str "muss."]]
   ,[Plain [Math InlineMath "= \\frac{1}{2}:",Space,Math InlineMath "A(n) = \\frac{3n+1}{4}",Str ",",Space,Str "ungef\228hr",Space,Math InlineMath "75 \\%",Space,Str "aller",Space,Str "Elemente",Space,Str "von",Space,Math InlineMath "E",Space,Str "werden",Space,Str "verglichen."]]]]]
,HorizontalRule
,Header 1 ("\252berblick-laufzeit-analyse-f\252r-die-lineare-suche",[],[]) [Str "\220berblick:",Space,Str "Laufzeit-Analyse",Space,Str "f\252r",Space,Str "die",Space,Str "Lineare",Space,Str "Suche"]
,Div ("",["box","columns"],[])
 [Header 2 ("laufzeit-analyse",[],[]) [Str "Laufzeit-Analyse:"]
 ,BulletList
  [[Plain [Str "Die",Space,Str "Beurteilung",Space,Str "der",Space,Str "Effizienz",Space,Str "eines",Space,Str "Algorithmus",Space,Str "soll",Space,Str "unabh\228ngig",Space,Str "sein",Space,Str "von",Space,Str "verwendeter",Space,Str "Hardware,",Space,Str "Computer,",Space,Str "Programmiersprache."]]
  ,[Plain [Str "Wir",Space,Str "sind",Space,Str "in",Space,Str "der",Space,Str "Analyse",Space,Str "nicht",Space,Str "interessiert",Space,Str "an",Space,Str "der",Space,Str "exakten",Space,Str "Zahl",Space,Str "von",Space,Str "Rechenschritten",Space,Str "oder",Space,Str "Operationen.",Space,Str "F\252r",Space,Str "die",Space,Str "Analyse",Space,Str "legen",Space,Str "wir",Space,Str "elementare",Space,Str "Operationen",Space,Str "fest"]]
  ,[Plain [Str "Wir",Space,Str "betrachten",Space,Str "die",Space,Str "Laufzeit",Space,Str "eines",Space,Str "Algorithmus",Space,Str "nicht",Space,Str "als",Space,Str "eine",Space,Str "Zahl,",Space,Str "sondern",Space,Str "als",Space,Str "eine",Space,Str "Funktion",Space,Str "abh\228ngig",Space,Str "von",Space,Str "der",Space,Str "Eingabel\228nge."]]
  ,[Plain [Str "Wir",Space,Str "sind",Space,Str "dabei",Space,Str "nicht",Space,Str "an",Space,Str "der",Space,Str "exakt",Space,Str "ben\246tigten",Space,Str "Zeit",Space,Str "interessiert,",Space,Str "sondern",Space,Str "der",Space,Str "asymptotischen",Space,Str "Performanz",Space,Str "\8211",Space,Str "dem",Space,Str "Wachstum",Space,Str "der",Space,Str "Laufzeit",Space,Str "abh\228ngig",Space,Str "von",Space,Str "der",Space,Str "Eingabe."]]]]
,Div ("",["box","columns","fragment"],[])
 [Header 2 ("elementare-operation-1",[],[]) [Str "Elementare",Space,Str "Operation"]
 ,Para [Str "Vergleich",Space,Str "einer",Space,Str "Zahl",Space,Math InlineMath "K",Space,Str "mit",Space,Str "dem",Space,Str "Element",Space,Math InlineMath "E[index]",Space,Str "aus",Space,Str "z.B.",Space,Math InlineMath "E = [8, 5, 2, 7, 1, 4, 3, 6]",Str "."]]
,Div ("",["box","columns","fragment"],[])
 [Header 2 ("zeitkomplexit\228t-1",[],[]) [Str "Zeitkomplexit\228t"]
 ,BulletList
  [[Plain [Math InlineMath "W (n) = n \\in \\mathcal{O}(n)"]]
  ,[Plain [Math InlineMath "B(n) = 1 \\in \\mathcal{O}(1)"]]
  ,[Plain [Math InlineMath "A(n) = P(\\text{K in E}) \\frac{-n+1}{2} + n \\in \\mathcal{O}(n)"]]]]
,HorizontalRule
,Header 1 ("beispiel-analyse-where-is-waldo",["section"],[("data-background-color","#2CA02C")]) [Str "Beispiel",Space,Str "Analyse:",Space,Str "Where",Space,Str "is",Space,Str "Waldo?"]
,HorizontalRule
,Header 1 ("beispiel-waldo-auf-twitter",[],[("layout","columns")]) [Str "Beispiel:",Space,Str "Waldo",Space,Str "auf",Space,Str "twitter"]
,Div ("",["single-column-row"],[])
 [Div ("",["box","columns","top"],[])
  [Header 2 ("section-19",["top"],[]) []
  ,Para [Str "Als",Space,Str "Beispiel:",Space,Str "Wir",Space,Str "suchen",Space,Str "in",Space,Str "twitter",Space,Str "Waldo.",Space,RawInline (Format "html") "<img class=\"decker\" data-src=\"../data/algorithmen/Twitter_bird_logo_2012.svg.png\" alt=\"Twitter_bird_logo_2012.svg.png\" style=\"height:40px;\">"]
  ,Para [Str "Unsere",Space,Str "Annahme:",Space,Str "Waldo",Space,Str "ist",Space,Str "prominent",Space,Str "\8211",Space,Str "er",Space,Str "ist",Space,Str "jemand",Space,Str "dem",Space,Str "alle",Space,Str "folgen",Space,Str "und",Space,Str "von",Space,Str "dem",Space,Str "alle",Space,Str "immer",Space,Str "News",Space,Str "bekommen",Space,Str "m\246chten."]]]
,Div ("",["multi-column-row","multi-column-row-3"],[])
 [Div ("",["grow-2","column","column-1"],[("grow","2")])
  [Div ("",["box","columns","left"],[("grow","2")])
   [Header 2 ("section-20",["left"],[("grow","2")]) []
   ,RawBlock (Format "html") "<img class=\"decker\" data-src=\"../data/algorithmen/promi_graph_w1.png\" alt=\"promi_graph_w1.png\" style=\"height:420px;\">"]]
 ,Div ("",["grow-3","column","column-2"],[("grow","3")])
  [Div ("",["box","columns","center","fragment"],[("grow","3")])
   [Header 2 ("section-21",["center"],[("grow","3")]) []
   ,RawBlock (Format "html") "<img class=\"decker\" data-src=\"../data/algorithmen/promi_graph_w2.png\" alt=\"promi_graph_w2.png\" style=\"height:420px;\">"]]
 ,Div ("",["grow-4","column","column-3"],[("grow","4")])
  [Div ("",["box","columns","right","fragment"],[("grow","4")])
   [Header 2 ("section-22",["right"],[("grow","4")]) []
   ,RawBlock (Format "html") "<img class=\"decker\" data-src=\"../data/algorithmen/twitter-follower-network-graph-community.png\" alt=\"twitter-follower-network-graph-community.png\" style=\"height:400px;\">"]
  ,Div ("",["box","columns","footer"],[])
   [Header 2 ("section-23",["footer"],[]) []
   ,Para [Str "http://allthingsgraphed.com/2014/11/02/twitter-friends-network/"]]]]
,HorizontalRule
,Header 1 ("prominenten-beispiel",[],[("layout","columns")]) [Str "Prominenten",Space,Str "Beispiel"]
,Div ("",["single-column-row"],[])
 [Div ("",["box","columns","top"],[])
  [Header 2 ("ziel-finde-die-prominente-person",["top"],[]) [Str "Ziel:",Space,Str "Finde",Space,Str "die",Space,Str "prominente",Space,Str "Person"]
  ,Para [Str "Einer",Space,Str "prominenten",Space,Str "Person",Space,Str "(celebrity)",Space,Str "folgen",Space,Str "alle",Space,Str "auf",Space,Str "twitter."]]]
,Div ("",["multi-column-row","multi-column-row-3"],[])
 [Div ("",["grow-1","column","column-1"],[])
  [Div ("",["box","columns","left"],[])
   [Header 2 ("section-24",["left"],[]) []
   ,RawBlock (Format "html") "<img class=\"decker\" data-src=\"../data/algorithmen/promi_graph_1a.png\" alt=\"promi_graph_1a.png\" style=\"height:300px;\">"]]
 ,Div ("",["grow-1","column","column-3"],[])
  [Div ("",["box","columns","right"],[])
   [Header 2 ("matrix-darstellung",["right"],[]) [Str "Matrix-Darstellung"]
   ,Para [LineBreak]
   ,Para [Math DisplayMath "\nK_{ij} = \\left[\\begin{array}{cccc}\n1 & 1 & 1 & 1\\\\\n1 & 1 & 1 & 0\\\\\n0 & 0 & 1 & 0\\\\\n0 & 0 & 1 & 1\n\\end{array}\\right]\n"]]]]
,Div ("",["single-column-row"],[])
 [Div ("",["box","columns","bottom","fragment"],[])
  [Header 2 ("eingabe",["bottom"],[]) [Str "Eingabe:"]
  ,BulletList
   [[Plain [Math InlineMath "n \\times n",Space,Str "Verbindungsmatrix,",Space,Str "bei",Space,Math InlineMath "n \\in \\mathbb{N}",Space,Str "Personen"]]]]]
,HorizontalRule
,Header 1 ("prominenten-beispiel-1",[],[("layout","columns")]) [Str "Prominenten",Space,Str "Beispiel"]
,Div ("",["multi-column-row","multi-column-row-3"],[])
 [Div ("",["grow-1","column","column-1"],[])
  [Div ("",["box","columns","left"],[])
   [Header 2 ("section-25",["left"],[]) []
   ,RawBlock (Format "html") "<img class=\"decker\" data-src=\"../data/algorithmen/promi_graph_2.png\" alt=\"promi_graph_2.png\" style=\"height:400px;\">"]]
 ,Div ("",["grow-1","column","column-3"],[])
  [Div ("",["box","columns","right"],[])
   [Header 2 ("matrix-darstellung-1",["right"],[]) [Str "Matrix-Darstellung"]
   ,Para [Math DisplayMath "K_{ij} = \n\\left[\\begin{array}{cccccccc}\n1 & 1 & 1 & 1 & 0 & 0 & 0 & 0\\\\\n1 & 1 & 1 & 0 & 0 & 0 & 0 & 0\\\\\n0 & 0 & 1 & 0 & 0 & 0 & 0 & 0\\\\\n0 & 0 & 1 & 1 & 0 & 0 & 1 & 1\\\\\n1 & 1 & 1 & 0 & 1 & 1 & 0 & 0\\\\\n0 & 0 & 1 & 0 & 1 & 1 & 1 & 1\\\\\n0 & 0 & 1 & 1 & 0 & 0 & 1 & 0\\\\\n0 & 0 & 1 & 0 & 0 & 0 & 1 & 1\\\\\n\\end{array}\\right]\n"]]]]
,Div ("",["single-column-row"],[])
 [Div ("",["box","columns","bottom","fragment"],[])
  [Header 2 ("naiver-ansatz-f\252r-einen-algorithmus",["bottom"],[]) [Str "Naiver",Space,Str "Ansatz",Space,Str "f\252r",Space,Str "einen",Space,Str "Algorithmus"]
  ,Para [Str "F\252r",Space,Str "jeden",Space,Str "Account",Space,Str "einzeln:"]
  ,BulletList
   [[Plain [Str "Testen,",Space,Str "ob",Space,Str "diesem",Space,Str "alle",Space,Str "folgen."]]]]]
,HorizontalRule
,Header 1 ("formalisierung-prominentenbeispiel",[],[]) [Str "Formalisierung",Space,Str "Prominentenbeispiel"]
,Div ("",["box","columns"],[])
 [Header 2 ("eingabe-1",[],[]) [Str "Eingabe"]
 ,BulletList
  [[Plain [Math InlineMath "n \\in \\mathbb{N}",Space,Str "Personen,"]]
  ,[Plain [Str "von",Space,Str "diesen",Space,Str "ist",Space,Str "genau",Space,Str "eine",Space,Str "Person",Space,Str "ein",Space,Str "Prominenter,"]]
  ,[Plain [Math InlineMath "n \\times n",Space,Str "Veerbindungsmatrix,",Space,Str "so",Space,Str "dass",Space,Str "f\252r",Space,Math InlineMath "0 \\leq i, j \\leq n:",SoftBreak,Math DisplayMath " \nK[i, j] = \\begin{cases}\n  1 & \\text{wenn Person } i \\text{ Person } j \\text{ folgt}\\\\\n  0              & \\text{ansonsten}\n\\end{cases}\n"]]]]
,Div ("",["box","columns"],[])
 [Header 2 ("ausgabe",[],[]) [Str "Ausgabe"]
 ,Para [Str "Person",Space,Math InlineMath "k",Space,Str "wird",Space,Str "als",Space,Str "prominente",Space,Str "Person",Space,Str "zur\252ck",Space,Str "gegeben,",Space,Str "genau",Space,Str "dann",Space,Str "wenn"]
 ,Para [RawInline (Format "tex") "\\begin{eqnarray*} \n&& 0 \\leq i < n, i \\neq k \\Rightarrow K[i,k] = 1\n\\end{eqnarray*}"]]
,HorizontalRule
,Header 1 ("komplexit\228t-des-prominentenproblems",[],[]) [Str "Komplexit\228t",Space,Str "des",Space,Str "Prominentenproblems"]
,Para [Str "F\252r",Space,Str "den",Space,Str "naiven",Space,Str "Ansatz",Space,Str "wird",Space,Str "f\252r",Space,Str "jede",Space,Str "der",Space,Math InlineMath "n",Space,Str "Personen",Space,Str "einzeln",Space,Str "getestet,",Space,Str "ob",Space,Str "ihm",Space,Str "alle",Space,Str "folgen",Space,Str "(",Math InlineMath "n - 1",Space,Str "Vergleiche",Space,Str "mit",Space,Str "allen",Space,Str "anderen",Space,Str "Personen)."]
,Div ("",["col20"],[])
 [RawBlock (Format "html") "<img class=\"decker\" data-src=\"../data/Discussion.png\" alt=\"Discussion.png\" style=\"width:200px;\">"]
,Div ("",["col80"],[])
 [BulletList
  [[Plain [Str "Wie",Space,Str "ist",Space,Str "die",Space,Str "Laufzeit",Space,Str "f\252r",Space,Str "den",Space,Str "Worst-Case",Space,Str "f\252r",Space,Str "diesen",Space,Str "Algorithmus?"]]
  ,[Plain [Str "Wie",Space,Str "ist",Space,Str "die",Space,Str "Laufzeit",Space,Str "f\252r",Space,Str "den",Space,Str "Average-Case",Space,Str "f\252r",Space,Str "diesen",Space,Str "Algorithmus?"]]
  ,[Plain [Str "K\246nnen",Space,Str "wir",Space,Str "einen",Space,Str "besseren",Space,Str "Algorithmus",Space,Str "finden?"]]]]
,Div ("",["box","columns","fragment"],[])
 [Header 2 ("antworten-interaktiv-in-zoom-anotieren",[],[]) [Str "Antworten",Space,Str "(interaktiv",Space,Str "in",Space,Str "zoom",Space,Str "anotieren)"]
 ,Div ("",[],[("align","center")])
  [Table ("",[],[]) (Caption Nothing
   [])
   [(AlignDefault,ColWidth 0.175)
   ,(AlignCenter,ColWidth 0.15)
   ,(AlignCenter,ColWidth 0.175)
   ,(AlignCenter,ColWidth 0.1625)
   ,(AlignCenter,ColWidth 0.175)
   ,(AlignCenter,ColWidth 0.1625)]
   (TableHead ("",[],[])
   [Row ("",[],[])
    [Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     []
    ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Math InlineMath "\\in \\mathcal{O}(1)"]]
    ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Math InlineMath "\\in \\mathcal{O}(\\log n)"]]
    ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Math InlineMath "\\in \\mathcal{O}(n)"]]
    ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Math InlineMath "\\in \\mathcal{O}(n^2)"]]
    ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Math InlineMath "\\in \\mathcal{O}(2^n)"]]]])
   [(TableBody ("",[],[]) (RowHeadColumns 0)
    []
    [Row ("",[],[])
     [Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
      [Plain [Str "Worst-Case"]]
     ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
      []
     ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
      []
     ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
      []
     ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
      []
     ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
      []]
    ,Row ("",[],[])
     [Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
      [Plain [Str "Best-Case"]]
     ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
      []
     ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
      []
     ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
      []
     ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
      []
     ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
      []]
    ,Row ("",[],[])
     [Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
      [Plain [Str "Average-Case"]]
     ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
      []
     ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
      []
     ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
      []
     ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
      []
     ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
      []]])]
   (TableFoot ("",[],[])
   [])]]
,HorizontalRule
,Header 1 ("programmieraufgabe-naiver-ansatz-prominentenproblem",[],[]) [Str "Programmieraufgabe:",Space,Str "Naiver",Space,Str "Ansatz",Space,Str "Prominentenproblem"]
,Div ("",["box","columns"],[])
 [Header 2 ("initialisierung-python-umgebung.",[],[]) [Str "Initialisierung",Space,Str "Python",Space,Str "Umgebung."]
 ,Div ("",["sageCell","print"],[])
  [CodeBlock ("",["python"],[]) "import numpy as np\nimport matplotlib.pyplot as plt\n\nK_list = []\nfor i in range(2,20):\n    K = np.random.randint(2, size=(i,i))\n    for j in range(0,i):\n        K[j,j] = 1\n    set_promi = np.random.randint(i)\n    K[set_promi,:] = 0\n    K[:,set_promi] = 1\n    K_list.append(K)\n\ncomp_list = []\nfor K in K_list:\n    promi = -1\n    comparison_count = 0\n    for i in range(0, K.shape[0]):\n        promi_found = True\n        for j in range(0, K.shape[0]):\n            if K[j,i]==0:\n                promi_found = False\n            comparison_count += 1\n        if promi_found:\n            promi = i\n    comp_list.append(comparison_count)\n    \nplt.plot(comp_list)\nplt.show()"]]
,HorizontalRule
,Header 1 ("verbessern-ansatz",[],[]) [Str "Verbessern",Space,Str "Ansatz"]
,Para [Str "F\252r",Space,Str "den",Space,Str "naiven",Space,Str "Ansatz",Space,Str "wird",Space,Str "f\252r",Space,Str "jede",Space,Str "der",Space,Math InlineMath "n",Space,Str "Personen",Space,Str "einzeln",Space,Str "getestet,",Space,Str "ob",Space,Str "ihm",Space,Str "alle",Space,Str "folgen",Space,Str "(",Math InlineMath "n - 1",Space,Str "Vergleiche",Space,Str "mit",Space,Str "allen",Space,Str "anderen",Space,Str "Personen)."]
,Para [Str "Damit",Space,Str "ergibt",Space,Str "sich",Space,Str "f\252r",Space,Str "den",Space,Str "Worst-Case:",Space,Math InlineMath "W(n) \\in \\mathcal{O}(n^2)",Str "."]
,Para [LineBreak]
,Div ("",["box","columns","fragment"],[])
 [Header 2 ("average-case",[],[]) [Str "Average-Case"]
 ,Para [Str "F\252r",Space,Str "die",Space,Str "gegebenen",Space,Str "geschachtelten",Space,Str "Schleifen",Space,Str "ist",Space,Math InlineMath "A(n) = W(n)",Str "."]
 ,BulletList
  [[Plain [Str "Wie",Space,Str "kann",Space,Str "die",Space,Str "Average-Case",Space,Str "Laufzeit",Space,Str "einfach",Space,Str "verbessert",Space,Str "werden?"]]
  ,[Plain [Str "Was",Space,Str "ergibt",Space,Str "sich",Space,Str "dann",Space,Str "f\252r",Space,Str "eine",Space,Str "Average-Case",Space,Str "Laufzeit",Space,Str "nach",Space,Math InlineMath "A(n) = \\sum_{I \\in D_N} P(I) * t(I)",Str "?"]]
  ,[Plain [Str "Und",Space,Str "was",Space,Str "f\252r",Space,Str "eine",Space,Str "Best-",Space,Str "und",Space,Str "Worst-Case",Space,Str "Laufzeit?"]]]]
,HorizontalRule
,Header 1 ("summary-und-einordnung",["section"],[("data-background-color","#2CA02C")]) [Str "Summary",Space,Str "und",Space,Str "Einordnung"]
,HorizontalRule
,Header 1 ("quiz",[],[]) [Str "Quiz"]
,Para [Str "TODO"]
,HorizontalRule
,Header 1 ("zusammenfassung",[],[]) [Str "Zusammenfassung"]
,Div ("",["box","columns"],[])
 [Header 2 ("kriterien-f\252r-die-analyse-von-algorithmen",[],[]) [Str "Kriterien",Space,Str "f\252r",Space,Str "die",Space,Str "Analyse",Space,Str "von",Space,Str "Algorithmen"]
 ,BulletList
  [[Plain [Str "Korrektheit:",Space,Str "Pr\252fen,",Space,Str "ob",Space,Str "ein",Space,Str "Algorithmus",Space,Str "immer",Space,Str "die",Space,Str "korrekte",Space,Str "Ausgabe",Space,Str "f\252r",Space,Str "jede",Space,Str "Eingabe",Space,Str "liefert."]]
  ,[Plain [Str "Wieviel",Space,Str "Zeit",Space,Str "und",Space,Str "Speicherplatz",Space,Str "wird",Space,Str "ben\246tigt?"]
   ,BulletList
    [[Plain [Str "Zeitkomplexit\228t:",Space,Str "ben\246tigte",Space,Str "Zeit"]]
    ,[Plain [Str "Platzkomplexit\228t:",Space,Str "ben\246tigte",Space,Str "Platz"]]]]
  ,[Plain [Str "Verst\228ndlichkeit"]]]]
,Div ("",["box","columns","fragment"],[])
 [Header 2 ("laufzeitanalyse",[],[]) [Str "Laufzeitanalyse"]
 ,BulletList
  [[Plain [Str "Die",Space,Str "Komplexit\228t",Space,Str "wird",Space,Str "immer",Space,Str "betrachtet",Space,Str "im",Space,Str "Verh\228ltnis",Space,Str "zu",Space,Str "einer",Space,Str "bestimmten",Space,Str "Eingabe."]]
  ,[Plain [Str "Wir",Space,Str "sind",Space,Str "dabei",Space,Str "nicht",Space,Str "an",Space,Str "der",Space,Str "exakt",Space,Str "ben\246tigten",Space,Str "Zeit",Space,Str "interessiert,",Space,Str "sondern",Space,Str "der",Space,Str "asymptotischen",Space,Str "Performanz",Space,Str "\8211",Space,Str "dem",Space,Str "Wachstum",Space,Str "der",Space,Str "Laufzeit",Space,Str "abh\228ngig",Space,Str "von",Space,Str "der",Space,Str "Eingabe."]]
  ,[Plain [Str "Wir",Space,Str "unterscheiden",Space,Str "Worst-,",Space,Str "Best-",Space,Str "und",Space,Str "Average-Case",Space,Str "Szenarien."]]]]
,HorizontalRule
,Header 1 ("einordnung-weiterer-verlauf",[],[]) [Str "Einordnung,",Space,Str "weiterer",Space,Str "Verlauf"]
,Div ("",["col70"],[])
 [Div ("",["incremental"],[])
  [BulletList
   [[Plain [Str "Betrachten",Space,Str "von",Space,Emph [Str "Komplexit\228t",Space,Str "eines",Space,Str "Problems"],Space,Str "an",Space,Str "sich:",Space,Str "Wie",Space,Str "gut",Space,Str "kann",Space,Str "ein",Space,Str "Algorithmus",Space,Str "sein?",Space,Str "Was",Space,Str "ist",Space,Str "seine",Space,Str "optimale",Space,Str "Laufzeit?"]
    ,BulletList
     [[Plain [Str "f\252r",Space,Str "lineare",Space,Str "Suche",Space,Math InlineMath "\\in O(n)",Str ","]]
     ,[Plain [Str "aber",Space,Str "unter",Space,Str "zus\228tzlichen",Space,Str "Bedingungen",Space,Str "kann",Space,Str "dies",Space,Str "verbessert",Space,Str "werden,",Space,Str "z.B.",Space,Str "in",Space,Str "geordneten",Space,Str "Listen",Space,Str "ist",Space,Str "die",Space,Str "Suche",Space,Math InlineMath "\\in O(\\log n)",Str "."]]]]
   ,[Plain [Str "F\252r",Space,Str "sehr",Space,Str "teure",Space,Str "Rechenprobleme",Space,Str "m\252ssen",Space,Str "wir",Space,Str "die",Space,Str "Korrektheit",Space,Str "der",Space,Str "L\246sung",Space,Str "evtl.",Space,Str "aufgeben",Space,Str "und",Space,Str "betrachten",Space,Str "dann",Space,Str "zus\228tzlich",Space,Str "ein",Space,Emph [Str "Mass",Space,Str "f\252r",Space,Str "die",Space,Str "Qualit\228t",Space,Str "der",Space,Str "Ausgabe"],Str "."]]
   ,[Plain [Str "Vertiefen",Space,Str "der",Space,Str "Bedeutung",Space,Str "des",Space,Str "Average-Case",Space,Str "Szenarios:",Space,Str "Die",Space,Str "Szenarien",Space,Str "unterscheiden",Space,Str "sich",Space,Str "in",Space,Str "der",Space,Str "Auswahl",Space,Str "der",Space,Str "Instanzen,",Space,Str "die",Space,Str "herangezogen",Space,Str "werden",Space,Str "f\252r",Space,Str "die",Space,Str "Laufzeitbestimmung.",Space,Str "In",Space,Str "komplexeren",Space,Str "Problemen",Space,Str "kann",Space,Str "so",Space,Str "die",Space,Str "Worst-Case",Space,Str "Sicht",Space,Str "zu",Space,Str "sehr",Space,Str "auf",Space,Str "einzelne",Space,Str "(unwahrscheinliche)",Space,Str "F\228lle",Space,Str "fokussieren.",Space,Str "Vertiefen",Space,Str "anhand",Space,Str "des",Space,Str "Sortierproblems"]
    ,BulletList
     [[Plain [Str "Insertion",Space,Str "Sort",Space,Str "als",Space,Str "einf\252hrendes",Space,Str "Beispiel"]]
     ,[Plain [Str "QuickSort",Space,Str "als",Space,Str "Beispiel",Space,Str "f\252r",Space,Str "eine",Space,Str "verbesserte",Space,Str "Average-Case",Space,Str "Laufzeit"]]]]]]]
,Div ("",["col30"],[])
 [Para [LineBreak]
 ,RawBlock (Format "html") "<img class=\"decker\" data-src=\"../data/algorithmen/pseudocode-quicksort.png\" alt=\"pseudocode-quicksort.png\" style=\"width:400px;\">"]
,HorizontalRule
,Header 1 ("references",["unnumbered","biblio"],[]) [Str "References"]
,Div ("refs",["references","csl-bib-body","hanging-indent"],[])
 [Div ("ref-cormen2009",["csl-entry"],[])
  [Para [Str "Cormen,",Space,Str "Thomas",Space,Str "H.,",Space,Str "Charles",Space,Str "E.",Space,Str "Leiserson,",Space,Str "Ronald",Space,Str "L.",Space,Str "Rivest,",Space,Str "and",Space,Str "Clifford",Space,Str "Stein.",Space,Str "2009.",Space,Emph [Str "Introduction",Space,Str "to",Space,Str "Algorithms,",Space,Str "3rd",Space,Str "Edition"],Str ".",Space,Span ("",[],[]) [Str "MIT"],Space,Str "Press.",Space,Link ("",[],[]) [Str "http://mitpress.mit.edu/books/introduction-algorithms"] ("http://mitpress.mit.edu/books/introduction-algorithms",""),Str "."]]
 ,Div ("ref-katoen2020",["csl-entry"],[])
  [Para [Str "Katoen,",Space,Str "Joost-Pieter.",Space,Str "2020.",Space,Span ("",[],[]) [Str "\8220",Str "Datenstrukturen",Space,Str "Und",Space,Str "Algorithmen",Str ".",Str "\8221"],Space,Str "Lecture",Space,Str "Notes,",Space,Str "RWTH",Space,Str "Aachen."]]
 ,Div ("ref-knuth97",["csl-entry"],[])
  [Para [Str "Knuth,",Space,Str "Donald",Space,Str "E.",Space,Str "1997.",Space,Emph [Str "The",Space,Str "Art",Space,Str "of",Space,Str "Computer",Space,Str "Programming,",Space,Str "Vol.",Space,Str "1:",Space,Str "Fundamental",Space,Str "Algorithms"],Str ".",Space,Str "Third.",Space,Str "Reading,",Space,Str "Mass.:",Space,Str "Addison-Wesley."]]
 ,Div ("ref-yanofsky2010",["csl-entry"],[])
  [Para [Str "Yanofsky,",Space,Str "Noson",Space,Str "S.",Space,Str "2010.",Space,Span ("",[],[]) [Str "\8220",Span ("",["nocase"],[]) [Str "Towards",Space,Str "a",Space,Str "Definition",Space,Str "of",Space,Str "an",Space,Str "Algorithm"],Str ".",Str "\8221"],Space,Emph [Str "Journal",Space,Str "of",Space,Str "Logic",Space,Str "and",Space,Str "Computation"],Space,Str "21",Space,Str "(2):",Space,Str "253\8211\&86.",Space,Str "doi:",Link ("",[],[]) [Str "10.1093/logcom/exq016"] ("https://doi.org/10.1093/logcom/exq016",""),Str "."]]]]