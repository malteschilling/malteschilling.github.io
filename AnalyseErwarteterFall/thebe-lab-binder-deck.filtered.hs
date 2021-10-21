[HorizontalRule
,Header 1 ("thebelab-binder-deck",[],[]) [Str "ThebeLab",Space,Str "Binder",Space,Str "Deck"]
,Div ("",["box","columns"],[])
 [Header 2 ("thebelab",[],[]) [Str "ThebeLab"]
 ,Para [Str "A",Space,Str "Javascript",Space,Str "client",Space,Str "library",Space,Str "for",Space,Str "Jupyter",Space,Str "servers",Space,Str "that",Space,Str "uses",Space,Str "the",Space,Str "Jupyter",SoftBreak,Str "API"]
 ,BulletList
  [[Plain [Link ("",[],[]) [Str "minrk/thebelab"] ("https://github.com/minrk/thebelab","")]]
  ,[Plain [Link ("",[],[]) [Str "ThebeLab",Space,Str "-",Space,Str "ThebeLab",SoftBreak,Str "documentation"] ("https://thebelab.readthedocs.io/en/latest/","")]]]]
,Div ("",["box","columns"],[])
 [Header 2 ("binder",[],[]) [Str "Binder"]
 ,Para [Str "ThebeLab",Space,Str "uses",Space,Str "Binder",Space,Str "to",Space,Str "run",Space,Str "the",Space,Str "Jupyter",Space,Str "server",Space,Str "with",Space,Str "the",Space,Str "IHaskell",Space,Str "kernel",SoftBreak,Str "from",Space,Str "a",Space,Str "custom",Space,Str "Docker",Space,Str "image",Space,Str "on",Space,Str "GitHub."]
 ,BulletList
  [[Plain [Link ("",[],[]) [Str "The",Space,Str "Binder",Space,Str "Project"] ("https://mybinder.org","")]]
  ,[Plain [Link ("",[],[]) [Str "gibiansky/IHaskell"] ("https://github.com/gibiansky/IHaskell","")]]
  ,[Plain [Link ("",[],[]) [Str "monofon/plc-notebooks"] ("https://github.com/monofon/plc-notebooks","")]]]]
,HorizontalRule
,Header 1 ("a-thebelab-code-block",["columns"],[]) [Str "A",Space,Str "ThebeLab",Space,Str "Code",Space,Str "Block"]
,Div ("",["multi-column-row","multi-column-row-3"],[])
 [Div ("",["grow-2","column","column-1"],[("grow","2")])
  [Div ("",["box","columns","left"],[("grow","2")])
   [Header 2 ("section",["left"],[("grow","2")]) []
   ,CodeBlock ("",["python"],[("data-executable","true"),("data-language","python")]) "%matplotlib inline\n#import numpy as np\n#import matplotlib.pyplot as plt\n\nprint(\"Test\")"]]
 ,Div ("",["grow-1","column","column-3"],[])
  [Div ("",["box","columns","right"],[])
   [Header 2 ("usage",["right"],[]) [Str "Usage"]
   ,OrderedList (1,Decimal,Period)
    [[Plain [Str "Click",Space,Str "[run]"]]
    ,[Plain [Str "Be",Space,Str "patient!"]]
    ,[Plain [Str "Edit",Space,Str "code"]]
    ,[Plain [Str "Rinse,",Space,Str "repeat"]]]]]]]