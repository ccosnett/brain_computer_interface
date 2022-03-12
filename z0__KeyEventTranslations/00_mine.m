Item[KeyEvent["w", Modifiers -> {Control, Command, Alt}],
  "ExpandSelection"
];(**)
Item[KeyEvent["z", Modifiers -> {Control}],
  FrontEndExecute[FrontEnd`FrontEndToken[SelectedNotebook[],              "EvaluateNotebook",    Automatic]]
];(**)
Item[KeyEvent["q", Modifiers -> {Control}],
  FrontEndExecute[FrontEnd`FrontEndToken[SelectedNotebook[],              "EvaluatorQuit",       Automatic]]
];(**)
Item[KeyEvent["g", Modifiers -> {Control}],
    FrontEndExecute[FrontEnd`FrontEndToken[SelectedNotebook[], "EvaluateCells", Automatic]]
];(**)
Item[KeyEvent["r", Modifiers -> {Control}],
  FrontEndExecute[FrontEnd`FrontEndToken[SelectedNotebook[], "EvaluateCells", Automatic]]
];(**)
