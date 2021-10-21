[HorizontalRule
,Header 1 ("implementation-of-pseudocode.js",[],[]) [Str "Implementation",Space,Str "of",Space,Link ("",[],[]) [Str "Pseudocode.js"] ("https://github.com/SaswatPadhi/pseudocode.js","")]
,Div ("",["box","columns"],[])
 [Header 2 ("yaml-options",[],[]) [Str "YAML",Space,Str "Options:"]
 ,BulletList
  [[Plain [Strong [Str "indent"],Str ":",Space,Str "indent",Space,Str "size",Space,Str "inside",Space,Str "a",Space,Str "control",Space,Str "block",Space,Str "-",Space,Str "must",Space,Str "use",Space,Quoted SingleQuote [Str "em"]]]
  ,[Plain [Strong [Str "delimiter"],Str ":",Space,Str "value",Space,Str "used",Space,Str "to",Space,Str "start",Space,Str "and",Space,Str "end",Space,Str "a",Space,Str "comment"]]
  ,[Plain [Strong [Str "lineNumber"],Str ":",Space,Str "if",Space,Str "line",Space,Str "numbering",Space,Str "is",Space,Str "enabled"]]
  ,[Plain [Strong [Str "punctuation"],Str ":",Space,Str "line",Space,Str "number",Space,Str "puncutation"]]
  ,[Plain [Strong [Str "noEnd"],Str ":",Space,Str "if",Space,Str "block",Space,Str "endings",Space,Str "are",Space,Str "shown"]]
  ,[Plain [Strong [Str "caption"],Str ":",Space,Str "reset",Space,Str "the",Space,Str "caption",Space,Str "counter",Space,Str "to",Space,Str "this",Space,Str "number"]]]]
,Div ("",["box","columns","x-small"],[])
 [Header 2 ("default-values",["x-small"],[]) [Str "Default",Space,Str "Values"]
 ,CodeBlock ("",["yaml"],[]) "pseudocode:\n  indent: 1.2em\n  delimiter: '//'\n  lineNumber: false\n  punctuation: ':'\n  noEnd: false\n  caption: undefined"]
,HorizontalRule
,Header 1 ("section",["columns"],[]) []
,Div ("",["multi-column-row","multi-column-row-3"],[])
 [Div ("",["grow-1","column","column-1"],[])
  [Div ("",["box","columns","left"],[])
   [Header 2 ("this-code",["left"],[]) [Str "This",Space,Str "code:"]
   ,CodeBlock ("",["python"],[]) "for i in range(0, 10):\n\tprint(i)"]]
 ,Div ("",["grow-1","column","column-3"],[])
  [Div ("",["box","columns","right"],[])
   [Header 2 ("should-look-like-this",["right"],[]) [Str "Should",Space,Str "look",Space,Str "like",Space,Str "this:"]
   ,Para [Link ("",[],[("width","70%")]) [] ("include/pseudocode-hello.png","")]]]]]