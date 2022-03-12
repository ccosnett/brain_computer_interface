Item[KeyEvent["Enter"],                                                    KernelExecute[ ], MenuEvaluator -> Automatic];(**)








Item[KeyEvent["KeypadEnter"],                                            "EvaluateCells"];(**)
Item[KeyEvent["Return", Modifiers -> {Shift}],                       "HandleShiftReturn"];(**)
Item[KeyEvent["KP_Enter"],                                               "EvaluateCells"];(**)
Item[KeyEvent["KeypadEnter", Modifiers -> {Shift}],                   "EvaluateNextCell"];(**)
Item[KeyEvent["KP_Enter", Modifiers -> {Shift}],                      "EvaluateNextCell"];(**)
Item[KeyEvent["Enter", Modifiers -> {Shift}],                         "EvaluateNextCell"];(**)
Item[KeyEvent["Return", Modifiers -> {Command}],                           Evaluate[All]];(**)
Item[KeyEvent["Return", Modifiers -> {Option}],                       "SimilarCellBelow"];(**)
Item[KeyEvent[".", Modifiers->{Command, Option}], FrontEnd`EvaluatorInterrupt[Automatic]];(**)
Item[KeyEvent["Escape"],                                            "ShortNameDelimiter"];(**)
