Item[KeyEvent["PageUp"], "ScrollPageUp"];(**)
Item[KeyEvent["PageDown"], "ScrollPageDown"];(**)
Item[KeyEvent["Prior"], "ScrollPageUp"];(**)
Item[KeyEvent["Next"], "ScrollPageDown"];(**)
Item[KeyEvent["Home"], "ScrollNotebookStart"];(**)
Item[KeyEvent["End"], "ScrollNotebookEnd"];(**)
Item[KeyEvent["Up", Modifiers -> {Command}], FrontEndExecute[{FrontEnd`SelectionMove[FrontEnd`InputNotebook[], Before, Notebook], FrontEnd`FrontEndToken[FrontEnd`InputNotebook[], "ScrollNotebookStart"]}]];(**)
Item[KeyEvent["Down", Modifiers -> {Command}], FrontEndExecute[{FrontEnd`SelectionMove[FrontEnd`InputNotebook[], After, Notebook], FrontEnd`FrontEndToken[FrontEnd`InputNotebook[], "ScrollNotebookEnd"]}]];(**)
Item[KeyEvent["[", Modifiers -> {Command}], "HyperlinkGoBack"];(**)
Item[KeyEvent["]", Modifiers -> {Command}], "HyperlinkGoForward"];(**)
Item[KeyEvent["Left", Modifiers -> {Command, Option}], "HyperlinkGoBack"];(**)
Item[KeyEvent["Right", Modifiers -> {Command, Option}], "HyperlinkGoForward"];(**)
Item[KeyEvent["f", Modifiers -> {Command, Option}], FrontEndExecute[FrontEnd`Value[FEPrivate`NotebookToggleFullScreen[]]]];(**)