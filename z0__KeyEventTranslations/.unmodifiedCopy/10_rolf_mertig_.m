(* Test Run 1: delete all output, do not restart the kernel and evaluate all cells above  *)

Item[
  KeyEvent["Tab", Modifiers -> {Control}],
  KernelExecute[ Needs["abilities`"]; abilities`ability["TestRun1"] ], MenuEvaluator -> Automatic
];(**)




(* Test Run 2: delete all output, restart the kernel and evaluate all cells above  *)

Item[	KeyEvent["Tab", Modifiers -> {Control, Shift}],
  KernelExecute[ Needs["abilities`"]; abilities`ability["TestRun2"] ], MenuEvaluator -> Automatic
];(**)




(* Minimize all windows *)

Item[	KeyEvent["m", Modifiers -> {Command, Option}],
  KernelExecute[ Needs["abilities`"]; abilities`ability["Minimize"] ], MenuEvaluator -> Automatic
];(**)




(* move cell(s) up *)

Item[	KeyEvent["u", Modifiers -> {Command, Option}],
  KernelExecute[ Needs["abilities`"]; abilities`ability["MoveCellsUp"] ], MenuEvaluator -> Automatic
];(**)




(* move cell(s) down *)

Item[	KeyEvent["j", Modifiers -> {Command, Option}],
  KernelExecute[ Needs["abilities`"]; abilities`ability["MoveCellsDown"] ], MenuEvaluator -> Automatic
];(**)




(* from inside a cell select the cell bracket *)

Item[	KeyEvent["b", Modifiers -> {Command, Option}],
  KernelExecute[ Needs["abilities`"]; abilities`ability["SelectCellBracket"] ], MenuEvaluator -> Automatic
];(**)




(* Delete output: Ctrl Shift x, is a ability for  Delete All Output and for NotebookDelete[Cells[MessagesNotebook[]]] *)

Item[	KeyEvent["x", Modifiers -> {Command, Shift}],
  KernelExecute[ Needs["abilities`"]; abilities`ability["DeleteOutputAndMessages"] ], MenuEvaluator -> Automatic
];(**)




(* Restart that Mathematica front end which was started last *)

Item[	KeyEvent["r", Modifiers -> {Control}],
  KernelExecute[ Needs["abilities`"]; abilities`ability["RestartFrontEnd"] ], MenuEvaluator -> Automatic
];(**)




(* Quit and restart the kernel; using this by Kuba: *)
(* http://mathematica.stackexchange.com/questions/82803/quit-the-kernel-and-start-new-session-automatically *)

Item[KeyEvent["q",  Modifiers -> {Control}],
  KernelExecute[ Needs["abilities`"]; abilities`ability["RestartKernel"] ], MenuEvaluator -> Automatic
];(**)




(* Select all Input and Code cells upwards from where the mouse is and evaluate those cells. *)

Item[KeyEvent["Up", Modifiers -> {Command, Shift}
],
  KernelExecute[Needs["abilities`"]; abilities`ability["EvaluateFromTop"]], MenuEvaluator -> Automatic
];(**)




(* Evaluate Notebook and move to the end *)

Item[KeyEvent["h", Modifiers -> {Control}
],
  KernelExecute[Needs["abilities`"]; abilities`ability["EvaluateNotebook"]], MenuEvaluator -> Automatic
];(**)




(* Evaluate Notebook *)

Item[KeyEvent["`", Modifiers -> {Control}, "EvaluateNotebook"
],
  KernelExecute[Needs["abilities`"]; abilities`ability["EvaluateNotebook"]], MenuEvaluator -> Automatic
];(**)




(* Select all cells upwards from where the mouse is *)

Item[KeyEvent["Home", Modifiers -> {Command}
],
  KernelExecute[ Needs["abilities`"]; abilities`ability["SelectToTop"] ] , MenuEvaluator -> Automatic
];(**)




(* Select all cells downwards from where the mouse is *)

Item[KeyEvent["Down", Modifiers -> {Command, Shift}],
  KernelExecute[ Needs["abilities`"]; abilities`ability["SelectToBottom"] ]
  , MenuEvaluator -> Automatic
];(**)




(* Close all Untitled* Notebooks *)

Item[KeyEvent["Delete", Modifiers -> {Control, Shift}],
  KernelExecute[ Needs["abilities`"]; abilities`ability["CloseUntitledNotebooks"] ]
  , MenuEvaluator -> Automatic
];(**)




(* by rm-rf: http://mathematica.stackexchange.com/questions/5212/automating-esc-esc-formatting/5215#5215*)

Item[KeyEvent["["(*]*), Modifiers -> {Control}],
  FrontEndExecute[
    FrontEnd`NotebookWrite[FrontEnd`InputNotebook[], " \[LeftDoubleBracket]", After]
  ]
];(**)






Item[KeyEvent[(*[*)"]", Modifiers -> {Control}],
  FrontEndExecute[
    FrontEnd`NotebookWrite[FrontEnd`InputNotebook[], " \[RightDoubleBracket]", After]
  ]
];(**)






Item[KeyEvent[(*[*)"]", Modifiers -> {Control, Command}],
  FrontEndExecute[{
    FrontEnd`NotebookWrite[FrontEnd`InputNotebook[],
      "\[LeftDoubleBracket]", After],
    FrontEnd`NotebookWrite[FrontEnd`InputNotebook[],
      "\[RightDoubleBracket]", Before]
  }]
];(**)




(* For[i = 0, i < max, i++, ] german keyboards, for Yves  *)

Item[KeyEvent["F4"],
  FrontEndExecute[{
    FrontEnd`NotebookWrite[FrontEnd`InputNotebook[], "\[LeftDoubleBracket]", After],
    FrontEnd`NotebookWrite[FrontEnd`InputNotebook[], "\[RightDoubleBracket]", Before]
  }]
];(**)




(* on Linux and  Windows: Stack windows  by F6, on MacOSX by Cmd PageUp*)

Item[KeyEvent["PageUp", Modifiers -> {Command}],
  KernelExecute[ Needs["abilities`"]; abilities`ability["F6"] ] , MenuEvaluator -> Automatic
];(**)








(* edit 'live' configurable joker keyboard ability: *)

Item[KeyEvent["j", Modifiers -> {Control, Shift}],
  KernelExecute[ Needs["abilities`"]; abilities`ability["OpenJoker1"] ], MenuEvaluator -> Automatic
];(**)




(* evaluate selected expression in a new notebook *)
(* inspired by Kuba: http://mathematica.stackexchange.com/questions/32340/evaluating-selected-expression-using-keyboard-ability/32341#32341 *)




Item[KeyEvent["PageDown", Modifiers -> {Command}
],
  KernelExecute[ Needs["abilities`"]; abilities`ability["EvaluateSelected"] ], MenuEvaluator -> Automatic
];(**)




Item[KeyEvent["Escape", Modifiers -> {Command}],
  KernelExecute[ Needs["abilities`"]; abilities`ability["OpenabilityHelpPage"]], MenuEvaluator -> Automatic
];(**)




(* open the init.m file *)

Item[KeyEvent["I", Modifiers -> {Command, Option }],
  KernelExecute[ Needs["abilities`"]; abilities`ability["OpenInit.m"]], MenuEvaluator -> Automatic
];(**)




(* open the $UserBaseDirectory file *)

Item[KeyEvent["End", Modifiers -> {Command}],
  KernelExecute[ Needs["abilities`"]; abilities`ability["OpenUserBaseDirectory"]], MenuEvaluator -> Automatic
];(**)





(* run 'live' configurable joker keyboard ability: *)

Item[KeyEvent["d", Modifiers -> {Control}],
  KernelExecute[ Needs["abilities`"]; abilities`ability["RunJoker1"]], MenuEvaluator -> Automatic
];(**)





(* run 'live' configurable joker keyboard ability: *)

Item[
    KeyEvent["k", Modifiers -> {Control, Command}],
    KernelExecute[ mindExtension`runShortcut["ctrl_cmd_k_.m"]],
    MenuEvaluator -> Automatic
];(**)








