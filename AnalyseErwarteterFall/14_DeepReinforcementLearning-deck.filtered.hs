[HorizontalRule
,Header 1 ("recap",["section"],[("data-background-color","#2CA02C")]) [Str "Recap"]
,HorizontalRule
,Header 1 ("markov-decision-process",["columns"],[]) [Str "Markov",Space,Str "Decision",Space,Str "Process"]
,Div ("",["multi-column-row","multi-column-row-3"],[])
 [Div ("",["grow-1","column","column-1"],[])
  [Div ("",["box","columns","left"],[])
   [Header 2 ("section",["left"],[]) []
   ,BulletList
    [[Plain [Str "a",Space,Str "set",Space,Str "of",Space,Str "states",Space,Math InlineMath "\\mathcal{S}",Str ":",Space,Str "Each",Space,Str "location",Space,Str "is",Space,Str "a",Space,Str "state."]]
    ,[Plain [Str "a",Space,Str "set",Space,Str "of",Space,Str "actions",Space,Math InlineMath "\\mathcal{A}",Str ":",Space,Str "North,",Space,Str "West,",Space,Str "South,",Space,Str "East"]]
    ,[Plain [Str "a",Space,Str "transition",Space,Str "probability",Space,Str "function",Space,Math InlineMath "\\mathcal{P}",Str ":",Space,Str "here",Space,Str "deterministic"]]
    ,[Plain [Str "a",Space,Str "reward",Space,Str "function",Space,Math InlineMath "\\mathcal{R}",Str ":",Space,Math InlineMath "-1",Space,Str "when",Space,Str "trying",Space,Str "to",Space,Str "move",Space,Str "out",Space,Str "of",Space,Str "the",Space,Str "grid,",Space,Math InlineMath "0",Space,Str "otherwise,",Space,Str "for",Space,Str "state",Space,Math InlineMath "A: +10",Space,Str "and",Space,Math InlineMath "B: +5"]]
    ,[Plain [Str "the",Space,Str "discount",Space,Str "factor",Space,Math InlineMath "\\gamma",Space,Str "\8211",Space,Str "influences",Space,Str "long",Space,Str "term",Space,Str "return"]]]]]
 ,Div ("",["grow-1","column","column-3"],[])
  [Div ("",["box","columns","right"],[])
   [Header 2 ("section-1",["right"],[]) []
   ,RawBlock (Format "html") "<img class=\"decker\" data-src=\"../data/12/sutton_3_2_gridworld_MDP.svg\" alt=\"sutton_3_2_gridworld_MDP.svg\" style=\"height:600px;\">"]]]
,Div ("",["single-column-row"],[])
 [Div ("",["box","columns","bottom","footer"],[])
  [Header 2 ("section-2",["bottom","footer"],[]) []
  ,Para [Cite [Citation {citationId = "sutton2018", citationPrefix = [], citationSuffix = [], citationMode = NormalCitation, citationNoteNum = 1, citationHash = 0}] [Str "[@sutton2018]"]]]]
,HorizontalRule
,Header 1 ("from-return-to-value-function",[],[]) [Str "From",Space,Str "Return",Space,Str "to",Space,Str "Value",Space,Str "Function"]
,Div ("",["box","columns","definition"],[])
 [Header 2 ("return",["definition"],[]) [Str "Return"]
 ,Para [Str "cumulative",Space,Str "future",Space,Str "reward",Space,Str "is",Space,Str "a",Space,Str "total",Space,Str "sum",Space,Str "of",Space,Str "discounted",Space,Str "rewards",Space,Str "going",Space,Str "forward,",Space,Str "starting",Space,Str "from",Space,Str "time",Space,Math InlineMath "t",Str ":"]
 ,Para [Math DisplayMath " G_t = R_{t+1} + \\gamma R_{t+2} + \\dots = \\sum_{k=0}^{\\infty} \\gamma^k R_{t+k+1} "]
 ,Para [Str "As",Space,Str "future",Space,Str "rewards",Space,Str "are",Space,Str "usually",Space,Str "more",Space,Str "uncertain,",Space,Str "they",Space,Str "are",Space,Str "weighted",Space,Str "less",Space,Str "through",Space,Str "the",Space,Strong [Str "discount",Space,Str "factor"],Space,Math InlineMath "\\gamma \\in [0, 1]",Str "."]]
,Div ("",["box","columns"],[])
 [Header 2 ("value-function",[],[]) [Str "Value",Space,Str "Function"]
 ,Para [Str "The",Space,Str "value",Space,Str "function",Space,Str "measures",Space,Str "the",Space,Str "estimated",Space,Str "goodness",Space,Str "of",Space,Str "a",Space,Str "state,",Space,Str "i.e.\160how",Space,Str "rewarding",Space,Str "a",Space,Str "state",Space,Str "is",Space,Str "by",Space,Str "a",Space,Str "prediction",Space,Str "of",Space,Str "the",Space,Str "cumulative",Space,Str "future",Space,Str "reward."]]
,Div ("",["box","columns","footer"],[])
 [Header 2 ("section-3",["footer"],[]) []
 ,Para [Cite [Citation {citationId = "weng2018rl", citationPrefix = [], citationSuffix = [], citationMode = NormalCitation, citationNoteNum = 2, citationHash = 0}] [Str "[@weng2018rl]"]]]
,HorizontalRule
,Header 1 ("state-value-function",[],[]) [Str "State-Value",Space,Str "Function"]
,Para [Str "The",Space,Strong [Str "state-value",Space,Str "function"],Space,Str "of",Space,Str "a",Space,Str "state",Space,Math InlineMath "s",Space,Str "is",Space,Str "the",Space,Str "expected",Space,Str "return",Space,Str "if",Space,Str "we",Space,Str "are",Space,Str "in",Space,Str "this",Space,Str "state",Space,Str "at",Space,Str "time",Space,Math InlineMath "t, S_t=s",Str ":"]
,Para [Math DisplayMath "V_{\\pi}(s) = \\mathbb{E}_{\\pi}[G_t \\vert S_t = s]"]
,BulletList
 [[Plain [Str "Used",Space,Str "to",Space,Str "evaluate",Space,Str "the",Space,Str "goodness/badness",Space,Str "of",Space,Str "states,"]]
 ,[Plain [Str "and",Space,Str "therefore",Space,Str "to",Space,Str "select",Space,Str "between",Space,Str "actions."]]]
,Div ("",["box","columns","footer"],[])
 [Header 2 ("section-4",["footer"],[]) []
 ,Para [Cite [Citation {citationId = "weng2018rl", citationPrefix = [], citationSuffix = [], citationMode = NormalCitation, citationNoteNum = 3, citationHash = 0}] [Str "[@weng2018rl]"]]]
,HorizontalRule
,Header 1 ("action-value-function-q-function",[],[]) [Str "Action-Value",Space,Str "Function",Space,Str "(Q-Function)"]
,Para [Str "The",Space,Strong [Str "action-value",Space,Str "function"],Space,Str "(",Quoted DoubleQuote [Str "Q-value"],Str ")",Space,Str "of",Space,Str "a",Space,Str "state-action",Space,Str "pair",Space,Str "is",Space,Str "defined",Space,Str "as:"]
,Para [Math DisplayMath "Q_{\\pi}(s, a) = \\mathbb{E}_{\\pi}[G_t \\vert S_t = s, A_t = a]"]
,Para [Str "When",Space,Str "following",Space,Str "a",Space,Str "target",Space,Str "policy",Space,Math InlineMath "\\pi",Str ",",Space,Str "we",Space,Str "can",Space,Str "integrate",Space,Str "over",Space,Str "the",Space,Str "probility",Space,Str "distribution",Space,Str "of",Space,Str "possible",Space,Str "actions",Space,Str "which",Space,Str "again",Space,Str "leads",Space,Str "to",Space,Str "the",Space,Str "state-value",Space,Str "function:"]
,Para [Math DisplayMath "V_{\\pi}(s) = \\sum_{a \\in \\mathcal{A}} Q_{\\pi}(s, a) \\pi(a \\vert s)"]
,Div ("",["box","columns"],[])
 [Header 2 ("advantage-function",[],[]) [Str "Advantage",Space,Str "Function"]
 ,Para [Str "The",Space,Str "difference",Space,Str "between",Space,Str "action-value",Space,Str "and",Space,Str "state-value",Space,Str "is",Space,Str "the",Space,Strong [Str "action",Space,Str "advantage",Space,Str "function"]]
 ,Para [Math DisplayMath "A_{\\pi}(s, a) = Q_{\\pi}(s, a) - V_{\\pi}(s)"]]
,Div ("",["box","columns","footer"],[])
 [Header 2 ("section-5",["footer"],[]) []
 ,Para [Cite [Citation {citationId = "weng2018rl", citationPrefix = [], citationSuffix = [], citationMode = NormalCitation, citationNoteNum = 4, citationHash = 0}] [Str "[@weng2018rl]"]]]
,HorizontalRule
,Header 1 ("optimal-solution-for-the-gridworld-example",[],[]) [Str "Optimal",Space,Str "Solution",Space,Str "for",Space,Str "the",Space,Str "Gridworld",Space,Str "Example"]
,RawBlock (Format "html") "<img class=\"decker\" data-src=\"../data/12/sutton_3_5_gridworld.svg\" alt=\"sutton_3_5_gridworld.svg\" style=\"width:1000px;\">"
,Para [Str "Each",Space,Str "location",Space,Str "is",Space,Str "a",Space,Str "state.",Space,Str "Discount",Space,Str "factor",Space,Str "is",Space,Math InlineMath "0.9",Str "."]
,Para [Str "Actions:",Space,Str "North,",Space,Str "West,",Space,Str "South,",Space,Str "East"]
,Para [Str "Reward:",Space,Math InlineMath "-1",Space,Str "when",Space,Str "trying",Space,Str "to",Space,Str "move",Space,Str "out",Space,Str "of",Space,Str "the",Space,Str "grid,",Space,Math InlineMath "0",Space,Str "otherwise"]
,Para [Str "For",Space,Str "state",Space,Math InlineMath "A",Space,Str "and",Space,Math InlineMath "B",Str ":",Space,Str "all",Space,Str "actions",Space,Str "lead",Space,Str "to",Space,Math InlineMath "A'",Space,Str "and",Space,Str "a",Space,Str "reward",Space,Str "of",Space,Math InlineMath "+10",Space,Str "(respectively",Space,Math InlineMath "B', +5",Str ")."]
,Div ("",["box","columns","footer"],[])
 [Header 2 ("section-6",["footer"],[]) []
 ,Para [Cite [Citation {citationId = "sutton2018", citationPrefix = [], citationSuffix = [], citationMode = NormalCitation, citationNoteNum = 5, citationHash = 0}] [Str "[@sutton2018]"]]]
,HorizontalRule
,Header 1 ("reinforcement-learning-approaches",["section"],[("data-background-color","#2CA02C")]) [Str "Reinforcement",Space,Str "Learning",Space,Str "Approaches"]
,HorizontalRule
,Header 1 ("common-approaches",[],[]) [Str "Common",Space,Str "Approaches"]
,Div ("",["col40"],[])
 [BulletList
  [[Plain [Str "Dynamic",Space,Str "Programming"]
   ,BulletList
    [[Plain [Str "Policy",Space,Str "Evaluation"]]
    ,[Plain [Str "Policy",Space,Str "Improvement"]]
    ,[Plain [Str "Policy",Space,Str "Iteration"]]]]
  ,[Plain [Str "Monte-Carlo",Space,Str "Methods"]]
  ,[Plain [Str "Temporal-Difference",Space,Str "Learning"]
   ,BulletList
    [[Plain [Str "SARSA:",Space,Str "On-Policy",Space,Str "TD",Space,Str "control"]]
    ,[Plain [Str "Q-Learning:",Space,Str "Off-Policy",Space,Str "TD",Space,Str "control"]]]]
  ,[Plain [Str "Policy",Space,Str "Gradient"]]]]
,Div ("",["col60"],[])
 [RawBlock (Format "html") "<iframe class=\"decker\" allow=\"fullscreen\" data-src=\"https://cs.stanford.edu/people/karpathy/reinforcejs/gridworld_dp.html\" style=\"width:1000px;height:620px;\"></iframe>"]
,Div ("",["box","columns","footer"],[])
 [Header 2 ("section-7",["footer"],[]) []
 ,Para [Cite [Citation {citationId = "karpathy_mdp", citationPrefix = [], citationSuffix = [], citationMode = NormalCitation, citationNoteNum = 6, citationHash = 0}] [Str "[@karpathy_mdp]"]]]
,HorizontalRule
,Header 1 ("section-8",[],[]) []
,Div ("",["col40"],[])
 [Header 2 ("dp-policy-iteration",[],[]) [Str "DP:",Space,Str "Policy",Space,Str "Iteration"]
 ,Para [Str "Iterative",Space,Str "procedure",Space,Str "to",Space,Str "improve",Space,Str "the",Space,Str "policy",Space,Str "when",Space,Str "combining",Space,Str "policy",Space,Str "evaluation",Space,Str "and",Space,Str "improvement."]
 ,Para [LineBreak]
 ,RawBlock (Format "html") "<img class=\"decker\" data-src=\"../data/13/silver_policyIteration.svg\" alt=\"silver_policyIteration.svg\" style=\"width:600px;\">"]
,Div ("",["col60"],[])
 [RawBlock (Format "html") "<iframe class=\"decker\" allow=\"fullscreen\" data-src=\"https://cs.stanford.edu/people/karpathy/reinforcejs/gridworld_dp.html\" style=\"width:100%;height:700px;\"></iframe>"]
,Div ("",["box","columns","footer"],[])
 [Header 2 ("section-9",["footer"],[]) []
 ,Para [Cite [Citation {citationId = "silver2015", citationPrefix = [], citationSuffix = [], citationMode = NormalCitation, citationNoteNum = 7, citationHash = 0},Citation {citationId = "karpathy_mdp", citationPrefix = [], citationSuffix = [], citationMode = NormalCitation, citationNoteNum = 7, citationHash = 0}] [Str "[@silver2015;@karpathy_mdp]"]]]
,HorizontalRule
,Header 1 ("exploring-unknown-state-space",["section"],[("data-background-color","#2CA02C")]) [Str "Exploring",Space,Str "Unknown",Space,Str "State",Space,Str "Space"]
,HorizontalRule
,Header 1 ("monte-carlo-methods",[],[]) [Str "Monte-Carlo",Space,Str "Methods"]
,Para [Str "\8230",Space,Str "learns",Space,Str "from",Space,Str "episodes",Space,Str "of",Space,Str "raw",Space,Str "experience",Space,Str "without",Space,Str "modeling",Space,Str "the",Space,Str "environmental",Space,Str "dynamics."]
,Para [Str "MC",Space,Str "methods",Space,Str "computes",Space,Str "the",Space,Str "observed",Space,Str "mean",Space,Str "return",Space,Str "as",Space,Str "an",Space,Str "approximation",Space,Str "of",Space,Str "the",Space,Str "expected",Space,Str "return."]
,Para [Str "Computation",Space,Str "of",Space,Str "the",Space,Str "empirical",Space,Str "return",Space,Math InlineMath "G_t",Space,Str "requires",Space,Str "complete",Space,Str "episodes",Space,Math InlineMath "S_1, A_1, R_2, ... , S_T",Str ":"]
,Para [Math DisplayMath "\nV(s) = \\frac{\\sum_{t=1}^T \\mathbb{1}[S_t = s] G_t}{\\sum_{t=1}^T \\mathbb{1}[S_t = s]}, Q(s, a) = \\frac{\\sum_{t=1}^T \\mathbb{1}[S_t = s, A_t = a] G_t}{\\sum_{t=1}^T \\mathbb{1}[S_t = s, A_t = a]}\n"]
,Para [Str "An",Space,Str "optimal",Space,Str "policy",Space,Str "can",Space,Str "be",Space,Str "learned",Space,Str "through",Space,Str "an",Space,Str "iteration",Space,Str "of",Space,Str "evaluation",Space,Str "and",Space,Str "improvement",Space,Str "(similar",Space,Str "to",Space,Str "GPI)."]
,HorizontalRule
,Header 1 ("from-monte-carlo-to-temporal-difference-learning",["columns"],[]) [Str "From",Space,Str "Monte-Carlo",Space,Str "to",Space,Str "Temporal-Difference",Space,Str "Learning"]
,Div ("",["multi-column-row","multi-column-row-3"],[])
 [Div ("",["grow-1","column","column-1"],[])
  [Div ("",["box","columns","left"],[])
   [Header 2 ("monte-carlo-backup",["left"],[]) [Str "Monte-Carlo",Space,Str "Backup"]
   ,RawBlock (Format "html") "<img class=\"decker\" data-src=\"../data/13/silver_mc_backup.svg\" alt=\"silver_mc_backup.svg\" style=\"width:600px;\">"]]
 ,Div ("",["grow-1","column","column-3"],[])
  [Div ("",["box","columns","right","fragment"],[])
   [Header 2 ("td-backup",["right"],[]) [Str "TD",Space,Str "Backup"]
   ,RawBlock (Format "html") "<img class=\"decker\" data-src=\"../data/13/silver_td_backup.svg\" alt=\"silver_td_backup.svg\" style=\"width:600px;\">"]]]
,Div ("",["single-column-row"],[])
 [Div ("",["box","columns","bottom"],[])
  [Header 2 ("section-10",["bottom"],[]) []]
 ,Div ("",["box","columns","footer"],[])
  [Header 2 ("section-11",["footer"],[]) []
  ,Para [Cite [Citation {citationId = "silver2015", citationPrefix = [], citationSuffix = [], citationMode = NormalCitation, citationNoteNum = 8, citationHash = 0}] [Str "[@silver2015]"]]]]
,HorizontalRule
,Header 1 ("temporal-difference-learning",[],[]) [Str "Temporal-Difference",Space,Str "Learning"]
,BulletList
 [[Plain [Str "model-free",Space,Str "method",Space,Str "\8211",Space,Str "no",Space,Str "knowledge",Space,Str "of",Space,Str "MDP",Space,Str "required"]]
 ,[Plain [Str "learns",Space,Str "from",Space,Str "episodes",Space,Str "of",Space,Str "experience",Space,Str "\8211",Space,Str "but",Space,Str "can",Space,Str "learn",Space,Str "from",Space,Str "incomplete",Space,Str "episodes",Space,Str "(!)"]]]
,Div ("",["box","columns","definition"],[])
 [Header 2 ("bootstrapping",["definition"],[]) [Str "Bootstrapping"]
 ,Para [Str "TD",Space,Str "learning",Space,Str "methods",Space,Str "update",Space,Str "targets",Space,Str "with",Space,Str "regard",Space,Str "to",Space,Str "existing",Space,Str "estimates",Space,Str "rather",Space,Str "than",Space,Str "exclusively",Space,Str "relying",Space,Str "on",Space,Str "actual",Space,Str "rewards",Space,Str "and",Space,Str "complete",Space,Str "returns",Space,Str "as",Space,Str "in",Space,Str "MC",Space,Str "methods."]]
,Div ("",["box","columns"],[])
 [Header 2 ("section-12",[],[]) []
 ,Para [Str "The",Space,Str "key",Space,Str "idea",Space,Str "in",Space,Str "TD",Space,Str "learning",Space,Str "is",Space,Str "to",Space,Str "update",Space,Str "the",Space,Str "value",Space,Str "function",Space,Math InlineMath "V(S_t)",Space,Str "towards",Space,Str "an",Space,Str "estimated",Space,Str "return",Space,Math InlineMath "R_{t+1}+\\gamma V(S_{t+1})",Space,Str "(known",Space,Str "as",Space,Quoted DoubleQuote [Str "TD",Space,Str "target"],Str ")."]]
,Div ("",["box","columns","footer"],[])
 [Header 2 ("section-13",["footer"],[]) []
 ,Para [Cite [Citation {citationId = "weng2018rl", citationPrefix = [], citationSuffix = [], citationMode = NormalCitation, citationNoteNum = 9, citationHash = 0}] [Str "[@weng2018rl]"]]]
,HorizontalRule
,Header 1 ("td-value-estimation",[],[]) [Str "TD:",Space,Str "Value",Space,Str "Estimation"]
,Para [Str "Update",Space,Str "of",Space,Str "the",Space,Str "value",Space,Str "function",Space,Str "is",Space,Str "regulated",Space,Str "by",Space,Str "the",Space,Str "learning",Space,Str "rate",Space,Math InlineMath "\\alpha",Str "."]
,Para [Str "In",Space,Str "brief:",Space,Str "TD",Space,Str "means",Space,Str "update",Space,Str "a",Space,Str "guess",Space,Str "(of",Space,Str "the",Space,Str "value",Space,Str "function)",Space,Str "towards",Space,Str "a",Space,Str "guess",Space,Str "(experiencing",Space,Str "a",Space,Str "single",Space,Str "step",Space,Str "and",Space,Str "a",Space,Str "guess",Space,Str "of",Space,Str "what",Space,Str "follows):"]
,Para [RawInline (Format "tex") "\\begin{align*}\nV(S_t) &\\leftarrow (1- \\alpha) V(S_t) + \\alpha G_t \\\\\nV(S_t) &\\leftarrow V(S_t) + \\alpha (G_t - V(S_t)) \\\\\nV(S_t) &\\leftarrow V(S_t) + \\alpha (R_{t+1} + \\gamma V(S_{t+1}) - V(S_t))\n\\end{align*}"]
,Para [Str "Similarly",Space,Str "for",Space,Str "the",Space,Str "Q-function:",SoftBreak,Math DisplayMath "\nQ(S_t, A_t) \\leftarrow Q(S_t, A_t) + \\alpha (R_{t+1} + \\gamma Q(S_{t+1}, A_{t+1}) - Q(S_t, A_t))\n"]
,Div ("",["box","columns","footer"],[])
 [Header 2 ("section-14",["footer"],[]) []
 ,Para [Cite [Citation {citationId = "weng2018rl", citationPrefix = [], citationSuffix = [], citationMode = NormalCitation, citationNoteNum = 10, citationHash = 0}] [Str "[@weng2018rl]"]]]
,HorizontalRule
,Header 1 ("comparison-of-monte-carlo-and-td-control",[],[]) [Str "Comparison",Space,Str "of",Space,Str "Monte-Carlo",Space,Str "and",Space,Str "TD",Space,Str "Control"]
,Para [Str "Temporal-difference",Space,Str "(TD)",Space,Str "learning",Space,Str "has",Space,Str "several",Space,Str "advantages",Space,Str "over",Space,Str "Monte-Carlo",Space,Str "methods",Space,Str "(MC):"]
,BulletList
 [[Plain [Str "Lower",Space,Str "variance"]]
 ,[Plain [Str "Online"]]
 ,[Plain [Str "Can",Space,Str "use",Space,Str "incomplete",Space,Str "sequences"]]]
,Div ("",["box","columns","fragment"],[])
 [Header 2 ("natural-idea",[],[]) [Str "Natural",Space,Str "idea:"]
 ,Para [Str "Use",Space,Str "TD",Space,Str "instead",Space,Str "of",Space,Str "MC",Space,Str "in",Space,Str "our",Space,Str "iterative",Space,Str "control",Space,Str "approach:"]
 ,BulletList
  [[Plain [Str "Apply",Space,Str "TD",Space,Str "to",Space,Math InlineMath "Q(S, A)"]]
  ,[Plain [Str "Use",Space,Math InlineMath "\\varepsilon",Str "-greedy",Space,Str "policy",Space,Str "improvement"]]
  ,[Plain [Str "But",Space,Str "now:",Space,Str "update",Space,Str "every",Space,Str "time-step"]]]]
,Div ("",["box","columns","footer"],[])
 [Header 2 ("section-15",["footer"],[]) []
 ,Para [Cite [Citation {citationId = "silver2015", citationPrefix = [], citationSuffix = [], citationMode = NormalCitation, citationNoteNum = 11, citationHash = 0}] [Str "[@silver2015]"]]]
,HorizontalRule
,Header 1 ("comparison-of-monte-carlo-and-td",["columns"],[]) [Str "Comparison",Space,Str "of",Space,Str "Monte-Carlo",Space,Str "and",Space,Str "TD"]
,Div ("",["multi-column-row","multi-column-row-3"],[])
 [Div ("",["grow-1","column","column-1"],[])
  [Div ("",["box","columns","left"],[])
   [Header 2 ("monte-carlo-backup-1",["left"],[]) [Str "Monte-Carlo",Space,Str "Backup"]
   ,RawBlock (Format "html") "<img class=\"decker\" data-src=\"../data/13/silver_mc_backup.svg\" alt=\"silver_mc_backup.svg\" style=\"width:600px;\">"]]
 ,Div ("",["grow-1","column","column-3"],[])
  [Div ("",["box","columns","right"],[])
   [Header 2 ("td-backup-1",["right"],[]) [Str "TD",Space,Str "Backup"]
   ,RawBlock (Format "html") "<img class=\"decker\" data-src=\"../data/13/silver_td_backup.svg\" alt=\"silver_td_backup.svg\" style=\"width:600px;\">"]]]
,Div ("",["single-column-row"],[])
 [Div ("",["box","columns","bottom"],[])
  [Header 2 ("section-16",["bottom"],[]) []
  ,Para [Str "Apply",Space,Str "TD",Space,Str "to",Space,Math InlineMath "Q(S, A)",Str ",",Space,Str "use",Space,Math InlineMath "\\varepsilon",Str "-greedy",Space,Str "policy",Space,Str "improvement",Space,Str "updating",Space,Str "every",Space,Str "time-step."]]
 ,Div ("",["box","columns","footer"],[])
  [Header 2 ("section-17",["footer"],[]) []
  ,Para [Cite [Citation {citationId = "silver2015", citationPrefix = [], citationSuffix = [], citationMode = NormalCitation, citationNoteNum = 12, citationHash = 0}] [Str "[@silver2015]"]]]]
,HorizontalRule
,Header 1 ("sarsa-as-on-policy-td-control",[],[]) [Str "SARSA",Space,Str "as",Space,Str "On-Policy",Space,Str "TD",Space,Str "control"]
,Div ("",["col80"],[])
 [Para [Str "SARSA",Space,Str "realizes",Space,Str "such",Space,Str "an",Space,Str "update",Space,Str "procedure",Space,Str "on",Space,Str "a",Space,Str "sequence",Space,Math InlineMath "S_t, A_t, R_{t+1}, S_{t+1}, A_{t+1}, \\dots"]
 ,OrderedList (1,Decimal,Period)
  [[Plain [Str "At",Space,Str "time",Space,Str "step",Space,Math InlineMath "t",Str ",",Space,Str "we",Space,Str "start",Space,Str "from",Space,Str "state",Space,Math InlineMath "S_t",Space,Str "and",Space,Str "pick",Space,Str "action",Space,Str "according",Space,Str "to",Space,Math InlineMath "Q",Space,Str "values,",Space,Math InlineMath "A_t = \\arg\\max_{a \\in \\mathcal{A}} Q(S_t, a)",Str ";",Space,Math InlineMath "\\varepsilon",Str "-greedy",Space,Str "is",Space,Str "commonly",Space,Str "applied."]]
  ,[Plain [Str "With",Space,Str "action",Space,Math InlineMath "A_t",Str ",",Space,Str "we",Space,Str "observe",Space,Str "reward",Space,Math InlineMath "R_{t+1}",Space,Str "and",Space,Str "get",Space,Str "into",Space,Str "the",Space,Str "next",Space,Str "state",Space,Math InlineMath "S_{t+1}",Str "."]]
  ,[Plain [Str "Then",Space,Str "pick",Space,Str "the",Space,Str "next",Space,Str "action",Space,Str "in",Space,Str "the",Space,Str "same",Space,Str "way",Space,Str "as",Space,Str "in",Space,Str "step",Space,Str "1."]]
  ,[Plain [Str "Update",Space,Str "the",Space,Str "action-value",Space,Str "function:",Space,Math InlineMath "Q(S_t, A_t) \\leftarrow Q(S_t, A_t) + \\alpha (R_{t+1} + \\gamma Q(S_{t+1}, A_{t+1}) - Q(S_t, A_t))"]]
  ,[Plain [Math InlineMath "t = t+1",Space,Str "and",Space,Str "repeat",Space,Str "from",Space,Str "step",Space,Str "1."]]]]
,Div ("",["col20"],[])
 [RawBlock (Format "html") "<img class=\"decker\" data-src=\"../data/13/sutton_sarsa.svg\" alt=\"sutton_sarsa.svg\" style=\"height:480px;\">"]
,Div ("",["box","columns","footer"],[])
 [Header 2 ("section-18",["footer"],[]) []
 ,Para [Cite [Citation {citationId = "sutton2018", citationPrefix = [], citationSuffix = [], citationMode = NormalCitation, citationNoteNum = 13, citationHash = 0}] [Str "[@sutton2018]"]]]
,HorizontalRule
,Header 1 ("on-policy-control-with-sarsa",[],[]) [Str "On-Policy",Space,Str "Control",Space,Str "with",Space,Str "SARSA"]
,Para [Str "At",Space,Str "every",Space,Str "timestep:"]
,BulletList
 [[Plain [Str "Policy",Space,Str "Evaluation",Space,Str "following",Space,Str "SARSA,",Space,Math InlineMath "Q \\approx q_{\\pi}"]]
 ,[Plain [Str "Policy",Space,Str "improvement:",Space,Math InlineMath "\\varepsilon",Str "-greedy",Space,Str "policy",Space,Str "improvement"]]]
,RawBlock (Format "html") "<img class=\"decker\" data-src=\"../data/13/silver_sarsa_improvement.svg\" alt=\"silver_sarsa_improvement.svg\" style=\"width:640px;\">"
,Div ("",["box","columns","footer"],[])
 [Header 2 ("section-19",["footer"],[]) []
 ,Para [Cite [Citation {citationId = "silver2015", citationPrefix = [], citationSuffix = [], citationMode = NormalCitation, citationNoteNum = 14, citationHash = 0}] [Str "[@silver2015]"]]]
,HorizontalRule
,Header 1 ("section-20",[],[]) []
,Div ("",["col40"],[])
 [Header 2 ("td-learning-example",[],[]) [Str "TD",Space,Str "Learning",Space,Str "Example"]
 ,Para [RawInline (Format "tex") "\\begin{align*}\n\nQ(S_t, A_t) \\leftarrow & Q(S_t, A_t) + \\\\ & \\alpha (R_{t+1} + \\\\ & \\gamma Q(S_{t+1}, A_{t+1}) \\\\ &- Q(S_t, A_t))\n\n\\end{align*}"]
 ,Para [Str "Two",Space,Str "stochastic",Space,Str "sources:"]
 ,OrderedList (1,Decimal,Period)
  [[Plain [Str "the",Space,Str "environment"]]
  ,[Plain [Str "the",Space,Str "agent",Space,Str "policy"]]]
 ,Para [Str "Difference",Space,Str "to",Space,Str "DP:",Space,Str "TD",Space,Str "Learning",Space,Str "estimates",Space,Str "the",Space,Str "value",Space,Str "functions",Space,Str "of",Space,Str "an",Space,Str "agent,",Space,Str "collecting",Space,Str "experience",Space,Str "online."]]
,Div ("",["col60"],[])
 [RawBlock (Format "html") "<iframe class=\"decker\" allow=\"fullscreen\" data-src=\"https://cs.stanford.edu/people/karpathy/reinforcejs/gridworld_td.html\" style=\"width:100%;height:700px;\"></iframe>"]
,Div ("",["box","columns","footer"],[])
 [Header 2 ("section-21",["footer"],[]) []
 ,Para [Cite [Citation {citationId = "karpathy_mdp", citationPrefix = [], citationSuffix = [], citationMode = NormalCitation, citationNoteNum = 15, citationHash = 0}] [Str "[@karpathy_mdp]"]]]
,HorizontalRule
,Header 1 ("off-policy-learning",[],[]) [Str "Off-Policy",Space,Str "Learning"]
,Para [Str "Evaluate",Space,Str "target",Space,Str "policy",Space,Math InlineMath "\\pi(a|s)",Space,Str "to",Space,Str "compute",Space,Math InlineMath "V_{\\pi}(s)",Space,Str "or",Space,Math InlineMath "Q_{\\pi}(s,a)"]
,Para [Str "\8230",Space,Str "while",Space,Str "following",Space,Str "different",Space,Str "behavior",Space,Str "policy",Space,Math InlineMath "\\mu(a|s)",SoftBreak,Math DisplayMath "\n{S_1,A_1,R_2,...,S_T} \\sim \\mu\n"]
,Para [Str "Why",Space,Str "is",Space,Str "this",Space,Str "important?"]
,Div ("",["box","columns","fragment"],[])
 [Header 2 ("section-22",[],[]) []
 ,BulletList
  [[Plain [Str "Learn",Space,Str "from",Space,Str "observing",Space,Str "humans",Space,Str "or",Space,Str "other",Space,Str "agents."]]
  ,[Plain [Str "Re-use",Space,Str "experience",Space,Str "generated",Space,Str "from",Space,Str "old",Space,Str "policies",Space,Math InlineMath "\\pi_1, \\pi_2, ..."]]
  ,[Plain [Str "Learn",Space,Str "about",Space,Str "optimal",Space,Str "policy",Space,Str "while",Space,Str "following",Space,Str "exploratory",Space,Str "policy."]]
  ,[Plain [Str "Learn",Space,Str "about",Space,Str "multiple",Space,Str "policies",Space,Str "while",Space,Str "following",Space,Str "one",Space,Str "policy."]]]]
,Div ("",["box","columns","footer"],[])
 [Header 2 ("section-23",["footer"],[]) []
 ,Para [Cite [Citation {citationId = "silver2015", citationPrefix = [], citationSuffix = [], citationMode = NormalCitation, citationNoteNum = 16, citationHash = 0}] [Str "[@silver2015]"]]]
,HorizontalRule
,Header 1 ("q-learning",[],[]) [Str "Q-Learning"]
,Para [Str "We",Space,Str "now",Space,Str "consider",Space,Str "off-policy",Space,Str "learning",Space,Str "of",Space,Str "action-values",Space,Math InlineMath "Q(s,a)",Str ":"]
,BulletList
 [[Plain [Str "Next",Space,Str "action",Space,Str "is",Space,Str "chosen",Space,Str "using",Space,Str "behaviour",Space,Str "policy",Space,Math InlineMath "A_{t+1} \\sim \\mu(\183|S_t)"]]
 ,[Plain [Str "But",Space,Str "we",Space,Str "consider",Space,Str "alternative",Space,Str "successor",Space,Str "action",Space,Math InlineMath "A' \\sim \\pi(\183|S_t)"]]
 ,[Plain [Str "And",Space,Str "update",Space,Math InlineMath "Q(S_t, A_t)",Space,Str "towards",Space,Str "value",Space,Str "of",Space,Str "alternative",Space,Str "action"]]]
,Div ("",["box","columns","footer"],[])
 [Header 2 ("section-24",["footer"],[]) []
 ,Para [Cite [Citation {citationId = "silver2015", citationPrefix = [], citationSuffix = [], citationMode = NormalCitation, citationNoteNum = 17, citationHash = 0}] [Str "[@silver2015]"]]]
,HorizontalRule
,Header 1 ("q-learning-off-policy-td-control",[],[]) [Str "Q-Learning",Space,Str "\8211",Space,Str "Off-Policy",Space,Str "TD",Space,Str "control"]
,Div ("",["col20"],[])
 [RawBlock (Format "html") "<img class=\"decker\" data-src=\"../data/13/sutton_q_backup.svg\" alt=\"sutton_q_backup.svg\" style=\"height:360px;\">"]
,Div ("",["col70"],[])
 [OrderedList (1,Decimal,Period)
  [[Plain [Str "At",Space,Str "time",Space,Str "step",Space,Math InlineMath "t",Str ",",Space,Str "we",Space,Str "start",Space,Str "from",Space,Str "state",Space,Math InlineMath "S_t",Space,Str "and",Space,Str "pick",Space,Str "action",Space,Str "according",Space,Str "to",Space,Math InlineMath "Q",Space,Str "values,",Space,Math InlineMath "A_t = \\arg\\max_{a \\in \\mathcal{A}} Q(S_t, a)",Str ";",Space,Math InlineMath "\\varepsilon",Str "-greedy",Space,Str "is",Space,Str "commonly",Space,Str "applied."]]
  ,[Plain [Str "With",Space,Str "action",Space,Math InlineMath "A_t",Str ",",Space,Str "we",Space,Str "observe",Space,Str "reward",Space,Math InlineMath "R_{t+1}",Space,Str "and",Space,Str "get",Space,Str "into",Space,Str "the",Space,Str "next",Space,Str "state",Space,Math InlineMath "S_{t+1}",Str "."]]
  ,[Plain [Str "Update",Space,Str "the",Space,Str "action-value",Space,Str "function:",Space,Math InlineMath "Q(S_t, A_t) \\leftarrow Q(S_t, A_t) + \\alpha (R_{t+1} + \\gamma \\max_{a \\in \\mathcal{A}} Q(S_{t+1}, a) - Q(S_t, A_t))"]]
  ,[Plain [Math InlineMath "t = t+1",Space,Str "and",Space,Str "repeat",Space,Str "from",Space,Str "step",Space,Str "1."]]]]
,Para [Str "Difference",Space,Str "to",Space,Str "SARSA:",Space,Str "Q-learning",Space,Str "does",Space,Str "not",Space,Str "follow",Space,Str "the",Space,Str "current",Space,Str "policy",Space,Str "to",Space,Str "pick",Space,Str "the",Space,Str "second",Space,Str "action,",Space,Str "but",Space,Str "rather",Space,Str "estimate",Space,Math InlineMath "Q_\8727",Space,Str "out",Space,Str "of",Space,Str "the",Space,Str "best",Space,Math InlineMath "Q",Space,Str "values",Space,Str "independently."]
,Div ("",["box","columns","footer"],[])
 [Header 2 ("section-25",["footer"],[]) []
 ,Para [Cite [Citation {citationId = "weng2018rl", citationPrefix = [], citationSuffix = [], citationMode = NormalCitation, citationNoteNum = 18, citationHash = 0},Citation {citationId = "sutton2018", citationPrefix = [], citationSuffix = [], citationMode = NormalCitation, citationNoteNum = 18, citationHash = 0}] [Str "[@weng2018rl;@sutton2018]"]]]
,HorizontalRule
,Header 1 ("convergence-of-q-learning",[],[]) [Str "Convergence",Space,Str "of",Space,Str "Q-Learning"]
,Para [Str "Q-learning",Space,Str "converges",Space,Str "towards",Space,Str "an",Space,Str "optimal",Space,Str "policy.",Space,Str "Even",Space,Str "if",Space,Str "you\8217re",Space,Str "acting",Space,Str "suboptimally,",Space,Str "this",Space,Str "process",Space,Str "converges."]
,Para [Str "Caveats:"]
,BulletList
 [[Plain [Str "Needs",Space,Str "exhaustive",Space,Str "exploration",Space,Str "to",Space,Str "guarantee",Space,Str "convergence",Space,Str "for",Space,Str "suboptimal",Space,Str "exploration."]]
 ,[Plain [Str "eventually",Space,Str "learning",Space,Str "rate",Space,Str "must",Space,Str "be",Space,Str "quite",Space,Str "small,",Space,Str "but",Space,Str "can",Space,Str "not",Space,Str "be",Space,Str "reduced",Space,Str "too",Space,Str "quickly"]]]
,HorizontalRule
,Header 1 ("relationship-between-dp-and-td",[],[]) [Str "Relationship",Space,Str "Between",Space,Str "DP",Space,Str "and",Space,Str "TD"]
,RawBlock (Format "html") "<img class=\"decker\" data-src=\"../data/13/silver_dp_td.svg\" alt=\"silver_dp_td.svg\" style=\"width:1000px;\">"
,Div ("",["box","columns","footer"],[])
 [Header 2 ("section-26",["footer"],[]) []
 ,Para [Cite [Citation {citationId = "silver2015", citationPrefix = [], citationSuffix = [], citationMode = NormalCitation, citationNoteNum = 19, citationHash = 0}] [Str "[@silver2015]"]]]
,HorizontalRule
,Header 1 ("relationship-between-dp-and-td-2",[],[]) [Str "Relationship",Space,Str "Between",Space,Str "DP",Space,Str "and",Space,Str "TD",Space,Str "2"]
,RawBlock (Format "html") "<img class=\"decker\" data-src=\"../data/13/silver_dp_td_equations.svg\" alt=\"silver_dp_td_equations.svg\" style=\"width:1000px;\">"
,Div ("",["box","columns","footer"],[])
 [Header 2 ("section-27",["footer"],[]) []
 ,Para [Cite [Citation {citationId = "silver2015", citationPrefix = [], citationSuffix = [], citationMode = NormalCitation, citationNoteNum = 20, citationHash = 0}] [Str "[@silver2015]"]]]
,HorizontalRule
,Header 1 ("reinforcement-learning-algorithms-overview",[],[]) [Str "Reinforcement",Space,Str "Learning",Space,Str "Algorithms",Space,Str "Overview"]
,RawBlock (Format "html") "<img class=\"decker\" data-src=\"../data/13/arulkumaran_drl.svg\" alt=\"arulkumaran_drl.svg\" style=\"width:640px;\">"
,Div ("",["box","columns","footer"],[])
 [Header 2 ("section-28",["footer"],[]) []
 ,Para [Cite [Citation {citationId = "arulkumaran2017brief", citationPrefix = [], citationSuffix = [], citationMode = NormalCitation, citationNoteNum = 21, citationHash = 0}] [Str "[@arulkumaran2017brief]"]]]
,HorizontalRule
,Header 1 ("deep-reinforcement-learning",["section"],[("data-background-color","#2CA02C")]) [Str "Deep",Space,Str "Reinforcement",Space,Str "Learning"]
,HorizontalRule
,Header 1 ("drawbacks-of-tabular-methods",[],[]) [Str "Drawbacks",Space,Str "of",Space,Str "Tabular",Space,Str "methods"]
,Para [Str "For",Space,Str "tabular",Space,Str "methods",Space,Str "like",Space,Str "basic",Space,Str "Q-Learning:",Space,Str "we",Space,Str "keep",Space,Str "a",Space,Str "table",Space,Str "of",Space,Str "all",Space,Math InlineMath "Q",Str "-values."]
,Div ("",["box","columns","fragment"],[])
 [Header 2 ("section-29",[],[]) []
 ,Para [Str "In",Space,Str "real",Space,Str "world",Space,Str "application:",Space,Str "not",Space,Str "possible",Space,Str "to",Space,Str "learn",Space,Str "about",Space,Str "every",Space,Str "single",Space,Str "state:"]
 ,BulletList
  [[Plain [Str "too",Space,Str "many",Space,Str "states",Space,Str "(or",Space,Str "even",Space,Str "continuous",Space,Str "input",Space,Str "spaces)",Space,Str "to",Space,Str "visit",Space,Str "in",Space,Str "training"]]
  ,[Plain [Str "table",Space,Str "would",Space,Str "be",Space,Str "too",Space,Str "large",Space,Str "for",Space,Str "so",Space,Str "many",Space,Str "states"]]]
 ,RawBlock (Format "html") "<img class=\"decker\" data-src=\"../data/14/klein_pacman.svg\" alt=\"klein_pacman.svg\" style=\"width:1000px;\">"]
,Div ("",["box","columns","footer"],[])
 [Header 2 ("section-30",["footer"],[]) []
 ,Para [Cite [Citation {citationId = "kleinCS188", citationPrefix = [], citationSuffix = [], citationMode = NormalCitation, citationNoteNum = 22, citationHash = 0}] [Str "[@kleinCS188]"]]]
,HorizontalRule
,Header 1 ("generalization-over-states",[],[]) [Str "Generalization",Space,Str "over",Space,Str "States"]
,Para [Str "In",Space,Str "order",Space,Str "to",Space,Str "deal",Space,Str "with",Space,Str "continuous",Space,Str "or",Space,Str "large",Space,Str "state",Space,Str "spaces,",Space,Str "we",Space,Str "want",Space,Str "to",Space,Str "generalize.",Space,Str "For",Space,Str "this,",Space,Str "we",Space,Str "use",Space,Emph [Str "Function",Space,Str "Approximation"],Str ":"]
,BulletList
 [[Plain [Str "Learn",Space,Str "about",Space,Str "a",Space,Str "small",Space,Str "number",Space,Str "of",Space,Str "training",Space,Str "states",Space,Str "from",Space,Str "experiences."]]
 ,[Plain [Str "Generalize",Space,Str "these",Space,Str "experiences",Space,Str "to",Space,Str "new,",Space,Str "similar",Space,Str "situations."]]]
,Para [Str "As",Space,Str "a",Space,Str "basic",Space,Str "idea",Space,Str "for",Space,Emph [Str "Deep",Space,Str "Reinforcement",Space,Str "Learning"],Str ":",Space,Str "use",Space,Str "Neural",Space,Str "Networks",Space,Str "for",Space,Str "function",Space,Str "approximation."]
,HorizontalRule
,Header 1 ("possible-problems-for-function-approximation",[],[]) [Str "Possible",Space,Str "Problems",Space,Str "for",Space,Str "Function",Space,Str "Approximation"]
,Para [Str "Goal:",Space,Str "apply",Space,Str "efficiency",Space,Str "and",Space,Str "flexibility",Space,Str "of",Space,Str "TD",Space,Str "methods",Space,Str "to",Space,Str "realistic",Space,Str "problems"]
,Div ("",["box","columns"],[])
 [Header 2 ("problem-deadly-triad",[],[]) [Str "Problem:",Space,Str "Deadly",Space,Str "Triad"]
 ,Para [Str "Approach",Space,Str "is",Space,Str "\8230"]
 ,BulletList
  [[Plain [Str "off-policy,"]]
  ,[Plain [Str "employs",Space,Str "non-linear",Space,Str "function",Space,Str "approximation,"]]
  ,[Plain [Str "and",Space,Str "uses",Space,Str "bootstrapping."]]]
 ,Para [Str "Combined:",Space,Str "can",Space,Str "become",Space,Str "unstable",Space,Str "or",Space,Str "does",Space,Str "not",Space,Str "converge!"]]
,Div ("",["box","columns","footer"],[])
 [Header 2 ("section-31",["footer"],[]) []
 ,Para [Cite [Citation {citationId = "weng2018rl", citationPrefix = [], citationSuffix = [], citationMode = NormalCitation, citationNoteNum = 23, citationHash = 0}] [Str "[@weng2018rl]"]]]
,HorizontalRule
,Header 1 ("deep-q-networks",[],[]) [Str "Deep",Space,Str "Q-Networks"]
,Para [Str "\8230",Space,Str "improved",Space,Str "and",Space,Str "stabilized",Space,Str "training",Space,Str "of",Space,Str "Q-learning",Space,Str "when",Space,Str "using",Space,Str "a",Space,Str "Deep",Space,Str "Neural",Space,Str "Network",Space,Str "for",Space,Str "function",Space,Str "approximation."]
,Para [Str "Two",Space,Str "innovative",Space,Str "mechanisms:"]
,Div ("",["incremental"],[])
 [BulletList
  [[Plain [Emph [Str "Experience",Space,Str "Replay:"],Space,Str "use",Space,Str "a",Space,Str "replay",Space,Str "buffer",Space,Str "for",Space,Str "storing",Space,Str "experiences."]]
  ,[Plain [Str "Periodically",Space,Str "Update",Space,Emph [Str "Target",Space,Str "network"],Space,Str "that",Space,Str "are",Space,Str "employed",Space,Str "for",Space,Str "bootstrapping."]]]]
,Div ("",["box","columns","footer"],[])
 [Header 2 ("section-32",["footer"],[]) []
 ,Para [Cite [Citation {citationId = "weng2018rl", citationPrefix = [], citationSuffix = [], citationMode = NormalCitation, citationNoteNum = 24, citationHash = 0}] [Str "[@weng2018rl]"]]]
,HorizontalRule
,Header 1 ("dqn-architecture-overview",[],[]) [Str "DQN",Space,Str "Architecture",Space,Str "Overview"]
,RawBlock (Format "html") "<img class=\"decker\" data-src=\"../data/14/mnih_dqn_architecture.png\" alt=\"mnih_dqn_architecture.png\">"
,Para [Quoted DoubleQuote [Str "we",Space,Str "developed",Space,Str "a",Space,Str "novel",Space,Str "agent,",Space,Str "a",Space,Str "deep",Space,Str "Q-network",Space,Str "(DQN),",Space,Str "which",Space,Str "is",Space,Str "able",Space,Str "to",Space,Str "combine",Space,Str "reinforcement",Space,Str "learning",Space,Str "with",Space,Str "a",Space,Str "class",Space,Str "of",Space,Str "artificial",Space,Str "neural",Space,Str "network",Space,Str "known",Space,Str "as",Space,Str "deep",Space,Str "neural",Space,Str "networks."]]
,Div ("",["box","columns","footer"],[])
 [Header 2 ("section-33",["footer"],[]) []
 ,Para [Cite [Citation {citationId = "mnih-dqn-2015", citationPrefix = [], citationSuffix = [], citationMode = NormalCitation, citationNoteNum = 25, citationHash = 0}] [Str "[@mnih-dqn-2015]"]]]
,HorizontalRule
,Header 1 ("goal-of-dqn-approximation-of-q-function",[],[]) [Str "Goal",Space,Str "of",Space,Str "DQN:",Space,Str "Approximation",Space,Str "of",Space,Str "Q-Function"]
,Div ("",["incremental"],[])
 [BulletList
  [[Plain [Str "Q-learning",Space,Str "can",Space,Str "be",Space,Str "used",Space,Str "to",Space,Str "find",Space,Str "an",Space,Str "optimal",Space,Str "action-selection",Space,Str "policy",Space,Str "for",Space,Str "any",Space,Str "given",Space,Str "(finite)",Space,Str "Markov",Space,Str "decision",Space,Str "process",Space,Str "(MDP)."]]
  ,[Plain [Str "It",Space,Str "works",Space,Str "by",Space,Str "learning",Space,Str "an",Space,Str "action-value",Space,Str "function",Space,Str "that",Space,Str "ultimately",Space,Str "gives",Space,Str "the",Space,Str "expected",Space,Str "utility",Space,Str "of",Space,Str "taking",Space,Str "a",Space,Str "given",Space,Str "action",Space,Str "in",Space,Str "a",Space,Str "given",Space,Str "state",Space,Str "and",Space,Str "following",Space,Str "the",Space,Str "optimal",Space,Str "policy",Space,Str "thereafter."]]
  ,[Plain [Str "One",Space,Str "of",Space,Str "the",Space,Str "strengths",Space,Str "of",Space,Str "Q-learning",Space,Str "is",Space,Str "that",Space,Str "it",Space,Str "is",Space,Str "able",Space,Str "to",Space,Str "compare",Space,Str "the",Space,Str "expected",Space,Str "utility",Space,Str "of",Space,Str "the",Space,Str "available",Space,Str "actions",Space,Str "without",Space,Str "requiring",Space,Str "a",Space,Str "model",Space,Str "of",Space,Str "the",Space,Str "environment."]]
  ,[Plain [Str "Q-learning",Space,Str "learns",Space,Str "estimates",Space,Str "of",Space,Str "the",Space,Str "optimal",Space,Str "Q-values",Space,Str "of",Space,Str "an",Space,Str "MDP,",Space,Str "which",Space,Str "means",Space,Str "that",Space,Str "behavior",Space,Str "can",Space,Str "be",Space,Str "dictated",Space,Str "by",Space,Str "taking",Space,Str "actions",Space,Str "greedily",Space,Str "with",Space,Str "respect",Space,Str "to",Space,Str "the",Space,Str "learned",Space,Str "Q-values."]]]]
,Div ("",["box","columns","footer"],[])
 [Header 2 ("section-34",["footer"],[]) []
 ,Para [Cite [Citation {citationId = "mnih-dqn-2015", citationPrefix = [], citationSuffix = [], citationMode = NormalCitation, citationNoteNum = 26, citationHash = 0}] [Str "[@mnih-dqn-2015]"]]]
,HorizontalRule
,Header 1 ("problems-for-rl-and-deep-neural-networks",[],[]) [Str "Problems",Space,Str "for",Space,Str "RL",Space,Str "and",Space,Str "Deep",Space,Str "Neural",Space,Str "Networks"]
,Para [Str "Reinforcement",Space,Str "learning",Space,Str "is",Space,Str "known",Space,Str "to",Space,Str "be",Space,Str "unstable",Space,Str "when",Space,Str "a",Space,Str "nonlinear",Space,Str "function",Space,Str "approximator",Space,Str "such",Space,Str "as",Space,Str "a",Space,Str "neural",Space,Str "network",Space,Str "is",Space,Str "used",Space,Str "to",Space,Str "represent",Space,Str "the",Space,Str "action-value",Space,Str "function."]
,Para [LineBreak]
,Para [Str "This",Space,Str "instability",Space,Str "has",Space,Str "several",Space,Str "causes:"]
,BulletList
 [[Plain [Str "the",Space,Str "correlations",Space,Str "present",Space,Str "in",Space,Str "the",Space,Str "sequence",Space,Str "of",Space,Str "observations,"]]
 ,[Plain [Str "the",Space,Str "fact",Space,Str "that",Space,Str "small",Space,Str "updates",Space,Str "to",Space,Math InlineMath "Q",Space,Str "may",Space,Str "significantly",Space,Str "change",Space,Str "the",Space,Str "policy",Space,Str "and",Space,Str "therefore",Space,Str "change",Space,Str "the",Space,Str "data",Space,Str "distribution,"]]
 ,[Plain [Str "and",Space,Str "the",Space,Str "correlations",Space,Str "between",Space,Str "the",Space,Str "action-values",Space,Str "and",Space,Str "the",Space,Str "target",Space,Str "values"]]]
,Div ("",["box","columns","footer"],[])
 [Header 2 ("section-35",["footer"],[]) []
 ,Para [Cite [Citation {citationId = "mnih-dqn-2015", citationPrefix = [], citationSuffix = [], citationMode = NormalCitation, citationNoteNum = 27, citationHash = 0}] [Str "[@mnih-dqn-2015]"]]]
,HorizontalRule
,Header 1 ("references",["biblio"],[]) [Str "References"]]