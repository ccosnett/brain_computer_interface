@@resource KeyEventTranslations
(* Modifiers can be "Shift", "Control", "Command", "Option"
	For Macintosh: "Command" = Command Key, "Option" = Option Key
	For X11: "Command" = Mod1, "Option" = Mod2
	For Windows: "Command" = Alt, "Option" = Alt
*)

EventTranslations[{Item[KeyEvent["w", Modifiers -> {Control, Command, Alt}],
  "ExpandSelection"
],
Item[KeyEvent["z", Modifiers -> {Control}],
  FrontEndExecute[FrontEnd`FrontEndToken[SelectedNotebook[],              "EvaluateNotebook",    Automatic]]
],
Item[KeyEvent["q", Modifiers -> {Control}],
  FrontEndExecute[FrontEnd`FrontEndToken[SelectedNotebook[],              "EvaluatorQuit",       Automatic]]
],
Item[KeyEvent["g", Modifiers -> {Control}],
    FrontEndExecute[FrontEnd`FrontEndToken[SelectedNotebook[], "EvaluateCells", Automatic]]
],
Item[KeyEvent["r", Modifiers -> {Control}],
  FrontEndExecute[FrontEnd`FrontEndToken[SelectedNotebook[], "EvaluateCells", Automatic]]
],Item[KeyEvent["Enter"],                                                  "EvaluateCells"],
Item[KeyEvent["KeypadEnter"],                                            "EvaluateCells"],
Item[KeyEvent["Return", Modifiers -> {Shift}],                       "HandleShiftReturn"],
Item[KeyEvent["KP_Enter"],                                               "EvaluateCells"],
Item[KeyEvent["KeypadEnter", Modifiers -> {Shift}],                   "EvaluateNextCell"],
Item[KeyEvent["KP_Enter", Modifiers -> {Shift}],                      "EvaluateNextCell"],
Item[KeyEvent["Enter", Modifiers -> {Shift}],                         "EvaluateNextCell"],
Item[KeyEvent["Return", Modifiers -> {Command}],                           Evaluate[All]],
Item[KeyEvent["Return", Modifiers -> {Option}],                       "SimilarCellBelow"],
Item[KeyEvent[".", Modifiers->{Command, Option}], FrontEnd`EvaluatorInterrupt[Automatic]],
Item[KeyEvent["Escape"],                                            "ShortNameDelimiter"],Item[KeyEvent["Up"], "MovePreviousLine"],
Item[KeyEvent["Down"], "MoveNextLine"],
Item[KeyEvent["Left"], "MovePrevious"],
Item[KeyEvent["Right"], "MoveNext"],
Item[KeyEvent["Up", Modifiers -> {Option}], "MovePreviousLine"],
Item[KeyEvent["Down", Modifiers -> {Option}], "MoveNextLine"],
Item[KeyEvent["Right", Modifiers -> {Option}], "MoveNextWord"],
Item[KeyEvent["Left", Modifiers -> {Option}], "MovePreviousWord"],
Item[KeyEvent["W", Modifiers->{Command, Control, Shift}], "MoveNextWord"],
Item[KeyEvent["w", Modifiers->{Command, Control}], "MovePreviousWord"],
Item[KeyEvent["Right", Modifiers -> {Command}], "MoveLineEnd"],
Item[KeyEvent["Left", Modifiers -> {Command}], "MoveLineBeginning"],

(* we should have the emacs commands from linux here (but i guess the steno does not care) here *)
(* we should try to achieve uniformity across pycharm and iterm *)
Item[KeyEvent["f", Modifiers->{Control}], "MoveNext"],
Item[KeyEvent["b", Modifiers->{Control}], "MovePrevious"],
Item[KeyEvent["d", Modifiers->{Control}], "DeleteNext"],
Item[KeyEvent["h", Modifiers->{Control}], "DeletePrevious"],
Item[KeyEvent["e", Modifiers->{Control}], "MoveLineEnd"],
Item[KeyEvent["a", Modifiers->{Control}], "MoveLineBeginning"],
Item[KeyEvent["n", Modifiers->{Control}], "MoveNextLine"],
Item[KeyEvent["p", Modifiers->{Control}], "MovePreviousLine"],Item[KeyEvent["Right", Modifiers -> {Shift}], "SelectNext"],
Item[KeyEvent["Left", Modifiers -> {Shift}], "SelectPrevious"],
Item[KeyEvent["Right", Modifiers -> {Option, Shift}], "SelectNextWord"],
Item[KeyEvent["Left", Modifiers -> {Option, Shift}], "SelectPreviousWord"],
Item[KeyEvent["Down", Modifiers -> {Shift}], "SelectNextLine"],
Item[KeyEvent["Up", Modifiers -> {Shift}], "SelectPreviousLine"],
Item[KeyEvent["Left", Modifiers -> {Command, Shift}], "SelectLineBeginning"],
Item[KeyEvent["Right", Modifiers -> {Command, Shift}], "SelectLineEnd"],
Item[KeyEvent[".", Modifiers -> {Control}], "ExpandSelection"],Item[KeyEvent["PageUp"], "ScrollPageUp"],
Item[KeyEvent["PageDown"], "ScrollPageDown"],
Item[KeyEvent["Prior"], "ScrollPageUp"],
Item[KeyEvent["Next"], "ScrollPageDown"],
Item[KeyEvent["Home"], "ScrollNotebookStart"],
Item[KeyEvent["End"], "ScrollNotebookEnd"],
Item[KeyEvent["Up", Modifiers -> {Command}], FrontEndExecute[{FrontEnd`SelectionMove[FrontEnd`InputNotebook[], Before, Notebook], FrontEnd`FrontEndToken[FrontEnd`InputNotebook[], "ScrollNotebookStart"]}]],
Item[KeyEvent["Down", Modifiers -> {Command}], FrontEndExecute[{FrontEnd`SelectionMove[FrontEnd`InputNotebook[], After, Notebook], FrontEnd`FrontEndToken[FrontEnd`InputNotebook[], "ScrollNotebookEnd"]}]],
Item[KeyEvent["[", Modifiers -> {Command}], "HyperlinkGoBack"],
Item[KeyEvent["]", Modifiers -> {Command}], "HyperlinkGoForward"],
Item[KeyEvent["Left", Modifiers -> {Command, Option}], "HyperlinkGoBack"],
Item[KeyEvent["Right", Modifiers -> {Command, Option}], "HyperlinkGoForward"],
Item[KeyEvent["f", Modifiers -> {Command, Option}], FrontEndExecute[FrontEnd`Value[FEPrivate`NotebookToggleFullScreen[]]]],Item[KeyEvent["Return"], "Linebreak"],
Item[KeyEvent["Tab"], "Tab"],
Item[KeyEvent["i", Modifiers -> {Control}], "Tab"],
Item[KeyEvent["Backspace"], "DeletePrevious"],
Item[KeyEvent["Backspace", Modifiers->{Option}], "DeletePreviousWord"],
Item[KeyEvent["ForwardDelete"], "DeleteNext"],Item[KeyEvent["6", Modifiers -> {Control}], "Superscript"],
Item[KeyEvent["Keypad6", Modifiers -> {Control}], "Superscript"],
Item[KeyEvent["^", Modifiers -> {Control}], "Superscript"],
Item[KeyEvent["-", Modifiers -> {Control}], "Subscript"],
Item[KeyEvent["_", Modifiers -> {Control}], "Subscript"],
Item[KeyEvent["/", Modifiers -> {Control}], "Fraction"],
Item[KeyEvent["KP_Divide", Modifiers -> {Control}], "Fraction"],
Item[KeyEvent["2", Modifiers -> {Control}], "Radical"],
Item[KeyEvent["Keypad2", Modifiers -> {Control}], "Radical"],
Item[KeyEvent["@", Modifiers -> {Control}], "Radical"],
Item[KeyEvent["7", Modifiers -> {Control}], "Above"],
Item[KeyEvent["&", Modifiers -> {Control}], "Above"],
Item[KeyEvent["Keypad7", Modifiers -> {Control}], "Above"],
Item[KeyEvent["$", Modifiers -> {Control}], "Below"],
Item[KeyEvent["4", Modifiers -> {Control}], "Below"],
Item[KeyEvent["Keypad4", Modifiers -> {Control}], "Below"],
Item[KeyEvent[",", Modifiers -> {Control}], "NewColumn"],
Item[KeyEvent["Return", Modifiers -> {Control}], "NewRow"],
Item[KeyEvent["9", Modifiers -> {Control}], "CreateInlineCell"],
Item[KeyEvent["(", Modifiers -> {Control}], "CreateInlineCell"],
Item[KeyEvent["Keypad9", Modifiers -> {Control}], "CreateInlineCell"],
Item[KeyEvent[")", Modifiers -> {Control}], "MoveNextCell"],
Item[KeyEvent["0", Modifiers -> {Control}], "MoveNextCell"],
Item[KeyEvent["Keypad0", Modifiers -> {Control}], "MoveNextCell"],
Item[KeyEvent["Left", Modifiers -> {Control}, CellClass -> BoxFormData], "NudgeLeft"],
Item[KeyEvent["Right", Modifiers -> {Control}, CellClass -> BoxFormData], "NudgeRight"],
Item[KeyEvent["Down", Modifiers -> {Control}, CellClass -> BoxFormData], "NudgeDown"],
Item[KeyEvent["Up", Modifiers -> {Control}, CellClass -> BoxFormData], "NudgeUp"],
Item[KeyEvent["5", Modifiers -> {Control}, CellClass -> BoxFormData], "Otherscript"],
Item[KeyEvent["Keypad5", Modifiers -> {Control}, CellClass -> BoxFormData], "Otherscript"],
Item[KeyEvent["%", Modifiers -> {Control}, CellClass -> BoxFormData], "Otherscript"],
Item[KeyEvent["PageUp", Modifiers-> {Control}, CellClass -> BoxFormData], "PreviousFunctionTemplate"],
Item[KeyEvent["PageDown", Modifiers-> {Control}, CellClass -> BoxFormData], "NextFunctionTemplate"],(* Test Run 1: delete all output, do not restart the kernel and evaluate all cells above  *)

Item[
  KeyEvent["Tab", Modifiers -> {Control}],
  KernelExecute[ Needs["abilities`"]; abilities`ability["TestRun1"] ], MenuEvaluator -> Automatic
],




(* Test Run 2: delete all output, restart the kernel and evaluate all cells above  *)

Item[	KeyEvent["Tab", Modifiers -> {Control, Shift}],
  KernelExecute[ Needs["abilities`"]; abilities`ability["TestRun2"] ], MenuEvaluator -> Automatic
],




(* Minimize all windows *)

Item[	KeyEvent["m", Modifiers -> {Command, Option}],
  KernelExecute[ Needs["abilities`"]; abilities`ability["Minimize"] ], MenuEvaluator -> Automatic
],




(* move cell(s) up *)

Item[	KeyEvent["u", Modifiers -> {Command, Option}],
  KernelExecute[ Needs["abilities`"]; abilities`ability["MoveCellsUp"] ], MenuEvaluator -> Automatic
],




(* move cell(s) down *)

Item[	KeyEvent["j", Modifiers -> {Command, Option}],
  KernelExecute[ Needs["abilities`"]; abilities`ability["MoveCellsDown"] ], MenuEvaluator -> Automatic
],




(* from inside a cell select the cell bracket *)

Item[	KeyEvent["b", Modifiers -> {Command, Option}],
  KernelExecute[ Needs["abilities`"]; abilities`ability["SelectCellBracket"] ], MenuEvaluator -> Automatic
],




(* Delete output: Ctrl Shift x, is a ability for  Delete All Output and for NotebookDelete[Cells[MessagesNotebook[]]] *)

Item[	KeyEvent["x", Modifiers -> {Command, Shift}],
  KernelExecute[ Needs["abilities`"]; abilities`ability["DeleteOutputAndMessages"] ], MenuEvaluator -> Automatic
],




(* Restart that Mathematica front end which was started last *)

Item[	KeyEvent["r", Modifiers -> {Control}],
  KernelExecute[ Needs["abilities`"]; abilities`ability["RestartFrontEnd"] ], MenuEvaluator -> Automatic
],




(* Quit and restart the kernel; using this by Kuba: *)
(* http://mathematica.stackexchange.com/questions/82803/quit-the-kernel-and-start-new-session-automatically *)

Item[KeyEvent["q",  Modifiers -> {Control}],
  KernelExecute[ Needs["abilities`"]; abilities`ability["RestartKernel"] ], MenuEvaluator -> Automatic
],




(* Select all Input and Code cells upwards from where the mouse is and evaluate those cells. *)

Item[KeyEvent["Up", Modifiers -> {Command, Shift}
],
  KernelExecute[Needs["abilities`"]; abilities`ability["EvaluateFromTop"]], MenuEvaluator -> Automatic
],




(* Evaluate Notebook and move to the end *)

Item[KeyEvent["h", Modifiers -> {Control}
],
  KernelExecute[Needs["abilities`"]; abilities`ability["EvaluateNotebook"]], MenuEvaluator -> Automatic
],




(* Evaluate Notebook *)

Item[KeyEvent["`", Modifiers -> {Control}, "EvaluateNotebook"
],
  KernelExecute[Needs["abilities`"]; abilities`ability["EvaluateNotebook"]], MenuEvaluator -> Automatic
],




(* Select all cells upwards from where the mouse is *)

Item[KeyEvent["Home", Modifiers -> {Command}
],
  KernelExecute[ Needs["abilities`"]; abilities`ability["SelectToTop"] ] , MenuEvaluator -> Automatic
],




(* Select all cells downwards from where the mouse is *)

Item[KeyEvent["Down", Modifiers -> {Command, Shift}],
  KernelExecute[ Needs["abilities`"]; abilities`ability["SelectToBottom"] ]
  , MenuEvaluator -> Automatic
],




(* Close all Untitled* Notebooks *)

Item[KeyEvent["Delete", Modifiers -> {Control, Shift}],
  KernelExecute[ Needs["abilities`"]; abilities`ability["CloseUntitledNotebooks"] ]
  , MenuEvaluator -> Automatic
],




(* by rm-rf: http://mathematica.stackexchange.com/questions/5212/automating-esc-esc-formatting/5215#5215*)

Item[KeyEvent["["(*]*), Modifiers -> {Control}],
  FrontEndExecute[
    FrontEnd`NotebookWrite[FrontEnd`InputNotebook[], " \[LeftDoubleBracket]", After]
  ]
],






Item[KeyEvent[(*[*)"]", Modifiers -> {Control}],
  FrontEndExecute[
    FrontEnd`NotebookWrite[FrontEnd`InputNotebook[], " \[RightDoubleBracket]", After]
  ]
],






Item[KeyEvent[(*[*)"]", Modifiers -> {Control, Command}],
  FrontEndExecute[{
    FrontEnd`NotebookWrite[FrontEnd`InputNotebook[],
      "\[LeftDoubleBracket]", After],
    FrontEnd`NotebookWrite[FrontEnd`InputNotebook[],
      "\[RightDoubleBracket]", Before]
  }]
],




(* For[i = 0, i < max, i++, ] german keyboards, for Yves  *)

Item[KeyEvent["F4"],
  FrontEndExecute[{
    FrontEnd`NotebookWrite[FrontEnd`InputNotebook[], "\[LeftDoubleBracket]", After],
    FrontEnd`NotebookWrite[FrontEnd`InputNotebook[], "\[RightDoubleBracket]", Before]
  }]
],




(* on Linux and  Windows: Stack windows  by F6, on MacOSX by Cmd PageUp*)

Item[KeyEvent["PageUp", Modifiers -> {Command}],
  KernelExecute[ Needs["abilities`"]; abilities`ability["F6"] ] , MenuEvaluator -> Automatic
],




(* run 'live' configurable joker keyboard ability: *)

Item[KeyEvent["d", Modifiers -> {Control}],
  KernelExecute[ Needs["abilities`"]; abilities`ability["RunJoker1"];Speak["hey from here"];Print["Hey From here"] ], MenuEvaluator -> Automatic
],




(* edit 'live' configurable joker keyboard ability: *)

Item[KeyEvent["j", Modifiers -> {Control, Shift}],
  KernelExecute[ Needs["abilities`"]; abilities`ability["OpenJoker1"] ], MenuEvaluator -> Automatic
],




(* evaluate selected expression in a new notebook *)
(* inspired by Kuba: http://mathematica.stackexchange.com/questions/32340/evaluating-selected-expression-using-keyboard-ability/32341#32341 *)




Item[KeyEvent["PageDown", Modifiers -> {Command}
],
  KernelExecute[ Needs["abilities`"]; abilities`ability["EvaluateSelected"] ], MenuEvaluator -> Automatic
],




Item[KeyEvent["Escape", Modifiers -> {Command}],
  KernelExecute[ Needs["abilities`"]; abilities`ability["OpenabilityHelpPage"]], MenuEvaluator -> Automatic
],




(* open the init.m file *)

Item[KeyEvent["I", Modifiers -> {Command, Option }],
  KernelExecute[ Needs["abilities`"]; abilities`ability["OpenInit.m"]], MenuEvaluator -> Automatic
],




(* open the $UserBaseDirectory file *)

Item[KeyEvent["End", Modifiers -> {Command}],
  KernelExecute[ Needs["abilities`"]; abilities`ability["OpenUserBaseDirectory"]], MenuEvaluator -> Automatic
],

(****************************************)
(****************************************)
}]