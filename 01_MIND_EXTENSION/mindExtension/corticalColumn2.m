BeginPackage["corticalColumn2`"];

keyevent::usage = "keyevent[nos]";
mykeyevents::usage = "mykeyevents[]";


Begin["`Private`"];



keyevent["TestRun1"] = keyevent[1] = Module[{},"
(* Test Run 1: delete all output, do not restart the kernel and evaluate all cells above  *)
	Item[	KeyEvent[\"Tab\", Modifiers -> {Control}], KernelExecute[ Needs[\"Shortcuts`\"]; Shortcuts`Shortcut[\"TestRun1\"] ], MenuEvaluator -> Automatic
	],
"];
keyevent["TestRun2"] = keyevent[2] = Module[{},"
(* Test Run 2: delete all output, restart the kernel and evaluate all cells above  *)
	Item[	KeyEvent[\"Tab\", Modifiers -> {Control, Shift}],
			KernelExecute[ Needs[\"Shortcuts`\"]; Shortcuts`Shortcut[\"TestRun2\"] ], MenuEvaluator -> Automatic
    ],
"];
keyevent["Minimize"] = keyevent[3] = Module[{},"
(* Minimize all windows *)
	Item[	KeyEvent[\"m\", Modifiers -> {Command, Option}],
			KernelExecute[ Needs[\"Shortcuts`\"]; Shortcuts`Shortcut[\"Minimize\"] ], MenuEvaluator -> Automatic
	],
"];
keyevent["MoveCellsUp"] = keyevent[4] = Module[{},
        "
(* move cell(s) up *)
	Item[	KeyEvent[\"u\", Modifiers -> {Command, Option}],
			KernelExecute[ Needs[\"Shortcuts`\"]; Shortcuts`Shortcut[\"MoveCellsUp\"] ], MenuEvaluator -> Automatic
	],
"];
keyevent["MoveCellsDown"] = keyevent[5] = Module[{},
        "
(* move cell(s) down *)
	Item[	KeyEvent[\"" <> If[ $OperatingSystem === "MacOSX",
          "j",
          "d"
        ] <> "\", Modifiers -> {Command, Option}],
			KernelExecute[ Needs[\"Shortcuts`\"]; Shortcuts`Shortcut[\"MoveCellsDown\"] ], MenuEvaluator -> Automatic
	],
"];
keyevent["SelectCellBracket"] = keyevent[6] = Module[{},
        "
(* from inside a cell select the cell bracket *)
	Item[	KeyEvent[\"b\", Modifiers -> {Command, Option}],
			KernelExecute[ Needs[\"Shortcuts`\"]; Shortcuts`Shortcut[\"SelectCellBracket\"] ], MenuEvaluator -> Automatic
	],
"];
keyevent["DeleteOutputAndMessages"] = keyevent[7] = Module[{},
        "
(* Delete output: Ctrl Shift x, is a shortcut for  Delete All Output and for NotebookDelete[Cells[MessagesNotebook[]]] *)
	Item[	KeyEvent[\"x\", Modifiers -> " <>
            Switch[$OperatingSystem, "MacOSX",  "{Command, Shift}",
              "Windows", "{Control, Shift}",
              "Unix",    "{Control, Command}"
            ] <>
            "],
			KernelExecute[ Needs[\"Shortcuts`\"]; Shortcuts`Shortcut[\"DeleteOutputAndMessages\"] ], MenuEvaluator -> Automatic
	],
"];
keyevent["DeleteAllCellsButInputAndCode"] = keyevent[8] = Module[{},
        If[ $OperatingSystem === "MacOSX",
          ""(* does not work on MacOSX *)
          ,
          "
(* Delete all cells but Input and Code: Ctrl Alt x, is a shortcut to delete all Output and all
           non-Input and non-Code cells and does also NotebookDelete[Cells[MessagesNotebook[]]]
           Suggested by Mooniac
*)
	Item[	KeyEvent[\"x\", Modifiers -> {" <> Switch[ $OperatingSystem,
            "Windows",
            "Control, Command",
            "Unix",
            "Command, Option"
          ] <> "}],
			KernelExecute[ Needs[\"Shortcuts`\"]; Shortcuts`Shortcut[\"DeleteAllCellsButInputAndCode\"] ], MenuEvaluator -> Automatic
	],
"
        ]];
keyevent["RestartFrontEnd"] = keyevent[9] = Module[{},
        "
(* Restart that Mathematica front end which was started last *)
	Item[	KeyEvent[\"r\", Modifiers -> {Control}],
				KernelExecute[ Needs[\"Shortcuts`\"]; Shortcuts`Shortcut[\"RestartFrontEnd\"] ], MenuEvaluator -> Automatic
	],
"];
keyevent["QuitFrontEnd"] = keyevent[10] = Module[{},
        If[ $OperatingSystem === "MacOSX",
          "",
          "
(* Quit the last Mathematica front end *)
	Item[KeyEvent[\"Delete\", Modifiers -> {Command, Option}],
            KernelExecute[ Needs[\"Shortcuts`\"]; Shortcuts`Shortcut[\"QuitFrontEnd\"] ], MenuEvaluator -> Automatic
	],
"
        ]];
keyevent["RestartKernel"] = keyevent[11] = Module[{},
        "
(* Quit and restart the kernel; using this by Kuba: *)
			(* http://mathematica.stackexchange.com/questions/82803/quit-the-kernel-and-start-new-session-automatically *)
	Item[KeyEvent[\"q\",  Modifiers -> " <>
            If[ $OperatingSystem === "Unix",
              "{Control, Shift}",
              "{Control}"
            ] <>
            "],
           KernelExecute[ Needs[\"Shortcuts`\"]; Shortcuts`Shortcut[\"RestartKernel\"] ], MenuEvaluator -> Automatic
	],
"];
keyevent["EvaluateFromTop"] = keyevent[12] = Module[{},
        "
(* Select all Input and Code cells upwards from where the mouse is and evaluate those cells. *)
	Item[KeyEvent[\"Up\", Modifiers -> {" <>
            If[ $OperatingSystem === "MacOSX",
              "Command",
              "Control"
            ] <> ", Shift}
         ],
         KernelExecute[Needs[\"Shortcuts`\"]; Shortcuts`Shortcut[\"EvaluateFromTop\"]], MenuEvaluator -> Automatic
	],"];
keyevent["EvaluateNotebook"] = keyevent[13] = Module[{},
        "
(* Evaluate Notebook and move to the end *)
	Item[KeyEvent[\"h\", Modifiers -> {Control}
		 ],
         KernelExecute[Needs[\"Shortcuts`\"]; Shortcuts`Shortcut[\"EvaluateNotebook\"]], MenuEvaluator -> Automatic
	],
"];
keyevent["EvaluateNotebook2"] = keyevent[14] = Module[{},
        "
(* Evaluate Notebook *)
	Item[KeyEvent[\"`\", Modifiers -> {Control}, \"EvaluateNotebook\"
		 ],
         KernelExecute[Needs[\"Shortcuts`\"]; Shortcuts`Shortcut[\"EvaluateNotebook\"]], MenuEvaluator -> Automatic
	],
"];
keyevent["SelectToTop"] = keyevent[15] = Module[{},
        "
(* Select all cells upwards from where the mouse is *)
	Item[KeyEvent[\"" <> If[ $OperatingSystem === "MacOSX",
          "Home",
          ";"
        ] <> "\", Modifiers -> {" <>
            If[ $OperatingSystem === "MacOSX",
              "Command",
              "Control"
            ] <> "}
         ],
         KernelExecute[ Needs[\"Shortcuts`\"]; Shortcuts`Shortcut[\"SelectToTop\"] ] , MenuEvaluator -> Automatic
	],"];
keyevent["SelectToBottom"] = keyevent[16] = Module[{},
        "
(* Select all cells downwards from where the mouse is *)
	Item[KeyEvent[\"Down\", Modifiers -> {" <>
            If[ $OperatingSystem === "MacOSX",
              "Command",
              "Control"
            ] <>
            ", Shift}],
         KernelExecute[ Needs[\"Shortcuts`\"]; Shortcuts`Shortcut[\"SelectToBottom\"] ]
         , MenuEvaluator -> Automatic
	],"];
keyevent["CloseUntitledNotebooks"] = keyevent[17] = Module[{},
        "
	(* Close all Untitled* Notebooks *)
	Item[KeyEvent[\"Delete\", Modifiers -> {Control, Shift}],
         KernelExecute[ Needs[\"Shortcuts`\"]; Shortcuts`Shortcut[\"CloseUntitledNotebooks\"] ]
         , MenuEvaluator -> Automatic
	],"];
keyevent["[["] = keyevent[18] = Module[{},
        "
	(* by rm-rf: http://mathematica.stackexchange.com/questions/5212/automating-esc-esc-formatting/5215#5215*)
	Item[KeyEvent[\"[\"(*]*), Modifiers -> {Control}],
        FrontEndExecute[
            FrontEnd`NotebookWrite[FrontEnd`InputNotebook[], \" " <> "\\" <> "[LeftDoubleBracket]\", After]
        ]
	],"];
keyevent["]]"] = keyevent[19] = Module[{},
        "
	Item[KeyEvent[(*[*)\"]\", Modifiers -> {Control}],
        FrontEndExecute[
            FrontEnd`NotebookWrite[FrontEnd`InputNotebook[], \" " <> "\\" <> "[RightDoubleBracket]\", After]
        ]
	],"];
keyevent["[[]]"] = keyevent[20] = Module[{},
        "
	Item[KeyEvent[(*[*)\"]\", Modifiers -> {Control, Command}],
        FrontEndExecute[{
            FrontEnd`NotebookWrite[FrontEnd`InputNotebook[],
               \"" <> "\\" <> "[LeftDoubleBracket]\", After],
            FrontEnd`NotebookWrite[FrontEnd`InputNotebook[],
               \"" <> "\\" <> "[RightDoubleBracket]\", Before]
        }]
	],"];
keyevent["F4"] = keyevent[21] = Module[{},
        "
	(* For[i = 0, i < max, i++, ] german keyboards, for Yves  *)
	Item[KeyEvent[\"F4\"],
        FrontEndExecute[{
            FrontEnd`NotebookWrite[FrontEnd`InputNotebook[], \"" <> "\\" <> "[LeftDoubleBracket]\", After],
            FrontEnd`NotebookWrite[FrontEnd`InputNotebook[], \"" <> "\\" <> "[RightDoubleBracket]\", Before]
        }]
	],"];
keyevent["F6"] = keyevent[22] = Module[{},
        "
	(* on Linux and  Windows: Stack windows  by F6, on MacOSX by Cmd PageUp*)
	Item[KeyEvent[\""<> If[ $OperatingSystem === "MacOSX",
          "PageUp",
          "F6"
        ] <> "\"" <>
            If[ $OperatingSystem === "MacOSX",
              ", Modifiers -> {Command}",
              ""
            ] <> "],
	    " <> "KernelExecute[ Needs[\"Shortcuts`\"]; Shortcuts`Shortcut[\"F6\"] ] , MenuEvaluator -> Automatic
	],"];
keyevent["RunJoker"] = keyevent[23] = Module[{},
        "
	(* run 'live' configurable joker keyboard shortcut: *)
	Item[KeyEvent[\"" <> If[ $OperatingSystem === "MacOSX",
          "d",
          "t"
        ] <> "\", Modifiers -> {Control}],
        KernelExecute[ Needs[\"Shortcuts`\"]; Shortcuts`Shortcut[\"RunJoker\"] ], MenuEvaluator -> Automatic
	],"];
keyevent["OpenJoker"] = keyevent[24] = Module[{},
        "
	(* edit 'live' configurable joker keyboard shortcut: *)
	Item[KeyEvent[\"j\", Modifiers -> {Control, Shift}],
        KernelExecute[ Needs[\"Shortcuts`\"]; Shortcuts`Shortcut[\"OpenJoker\"] ], MenuEvaluator -> Automatic
	],"];
keyevent["EvaluateSelected"] = keyevent[25] = Module[{},
        "
	(* evaluate selected expression in a new notebook *)
	(* inspired by Kuba: http://mathematica.stackexchange.com/questions/32340/evaluating-selected-expression-using-keyboard-shortcut/32341#32341 *)
	Item[KeyEvent[\"" <> Switch[
          $OperatingSystem,
          "Windows", ",",
          "MacOSX", "PageDown",
          "Unix", "c"
        ] <> "\", Modifiers -> {" <>
            Switch[$OperatingSystem,
              "MacOSX", "Command",
              "Windows", "Control, Shift",
              "Unix", "Command, Option"
            ] <>
            "}
      ],
      KernelExecute[ Needs[\"Shortcuts`\"]; Shortcuts`Shortcut[\"EvaluateSelected\"] ], MenuEvaluator -> Automatic
      ],"];
keyevent["OpenShortcutsHelp"] = keyevent[26] = Module[{},
        If[ $OperatingSystem === "MacOSX",
          "
  Item[KeyEvent[\"Escape\", Modifiers -> {Command}],
        KernelExecute[ Needs[\"Shortcuts`\"]; Shortcuts`Shortcut[\"OpenShortcutHelpPage\"]], MenuEvaluator -> Automatic
	],",
          "
  Item[KeyEvent[\"F1\", Modifiers -> {Control}],
        KernelExecute[ Needs[\"Shortcuts`\"]; Shortcuts`Shortcut[\"OpenShortcutHelpPage\"]], MenuEvaluator -> Automatic
	],"
        ]];
keyevent["OpenInitFile"] = keyevent[27] = Module[{},
        "
	(* open the init.m file *)
	Item[KeyEvent[\"" <> Switch[$OperatingSystem, "Unix", "I",
          "Windows", "/",
          "MacOSX", "I"
        ]<>"\", Modifiers -> {" <> Switch[$OperatingSystem,
          "Windows",
          "Control, Shift",
          "Unix",
          "Command, Option",
          "MacOSX",
          "Command, Option"
        ] <> " }],
        KernelExecute[ Needs[\"Shortcuts`\"]; Shortcuts`Shortcut[\"OpenInit.m\"]], MenuEvaluator -> Automatic
	],"];
keyevent["OpenUserBaseDirectory"] = keyevent[28] = Module[{},
        "
	(* open the $UserBaseDirectory file *)
	Item[KeyEvent[\""<>If[ $OperatingSystem === "MacOSX",
          "End",
          "F2"
        ]<>"\", Modifiers -> {" <> If[ $OperatingSystem === "MacOSX",
          "Command",
          "Control"
        ] <>"}],
        KernelExecute[ Needs[\"Shortcuts`\"]; Shortcuts`Shortcut[\"OpenUserBaseDirectory\"]], MenuEvaluator -> Automatic
	],"];
mykeyevents = StringJoin @@ Array[keyevent, 28];

End[];
EndPackage[];