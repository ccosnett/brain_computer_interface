BeginPackage["mind2`",{"mind3`"}];
Unprotect["MyPack`*"]; ClearAll["MyPack`*"]; ClearAll["MyPack`Private`*"];

keyHelp::usage = "keyHelp[keyString]";
listOfShortcuts::usage = "listOfShortcuts[]";
key2Steno::usage = "key2Steno[keyString]";
Begin["`Private`"];


jokerdir=$jokerdir;
keyHelp[z_ /; Head[z] =!= String] := SpanFromLeft;
keyHelp["Ctrl F1"] =(*Windows,Linux*)keyHelp["Cmd Escape"] ="Open the Shortcuts documentation page listing all extra keyboard shortcuts.";(*MacOSX*)
keyHelp["Ctrl Tab"] = "Delete all output and evaluate all cells from the top to the insertion point.";
keyHelp["Ctrl Shift Tab"] = "Delete all output, restart the kernel and evaluate all cells from the top to the insertion point.";
keyHelp["Ctrl Shift \[UpArrow]"] = "Evaluate all cells from the top of the notebook until the insertion point.";
keyHelp["Ctrl ;"] =(*Windows,Linux*)keyHelp["Cmd Home"] = "Select all cells from the top of the notebook to the insertion point.";
keyHelp["Ctrl Shift \[DownArrow]"] = "Select all cells from the insertion point until the end of the notebook.";
keyHelp["Ctrl Shift Tab"] = "Delete all output, restart the kernel and evaluate all cells from the top to the insertion point.";
keyHelp["Ctrl Shift \[UpArrow]"] =(*Windows,Linux*)(*Macintosh*) keyHelp["Cmd Shift \[UpArrow]"] = "Evaluate all cells from the top of the notebook until the insertion point.";
keyHelp["Ctrl ;"] = "Select all cells from the top of the notebook to the insertion point.";
keyHelp["Ctrl Shift \[DownArrow]"] =(*Windows,Linux*)keyHelp["Cmd Shift \[DownArrow]"] = "Select all cells from the insertion point until the end of the notebook.";
keyHelp["Ctrl Shift X"] =(*Windows*)keyHelp["Ctrl Cmd X"] =(*Linux*)keyHelp["Cmd Shift X"] =(*Macintosh*)"Delete all generated cells, like Output, Message and Print cells, also in MessagesNotebook[].";
keyHelp["Ctrl Alt X"] =(*Windows*)keyHelp["Cmd Alt X"] = "Delete all non-Input and non-Code cells.";(*Linux*)(*does not work \on Macintosh*)
keyHelp["Ctrl Q"] =(*Windows*)keyHelp["Ctrl Shift Q"] = "Quit and restart the kernel.";(*Linux*)
keyHelp["Ctrl R"] = "Quit and restart the front end. All Untitled notebooks are closed without confirmation." <> " All others are saved." <> " The selected notebook is saved and reopened, if possible.";
keyHelp["Ctrl H"] = "Evaluate Notebook.";
keyHelp["Ctrl Shift ,"] =(*Windows*)keyHelp["Cmd Alt C"] =(*Linux*)keyHelp["Cmd PageDown"] = "Copy, paste and evaluate the selected expression from the inside of a cell into a new notebook.";(*MacOSX*)
keyHelp["Cmd Alt B"] = "Select the current cell. The insertion point can be anywhere inside the cell.";
keyHelp["Cmd Alt M"] = "Minimize all notebooks.";
keyHelp["Cmd Alt U"] = "Cut the selected cell and paste it before the preceding cell.";
keyHelp["Cmd Alt D"] =(*Windows,Linux*)keyHelp["Cmd Alt J"] = "Cut the selected cell and paste it after the following cell.";
keyHelp["Cmd Alt Delete"] = "Quit the front end, saving named notebooks first.";
keyHelp["Ctrl Shift Delete"] = "Close all Untitled notebooks without confirmation.";
keyHelp["F4"] = "Insert \[LeftDoubleBracket]\[RightDoubleBracket]";
keyHelp["F6"] =(*Windows,Linux*)keyHelp["Cmd PageUp"] = "Stack windows.";
keyHelp["Ctrl T"] =(*Windows,Linux*)keyHelp["Ctrl D"] = "Evaluate the user defined code written in joker.m from " <> jokerdir;
keyHelp["Ctrl Shift J"] = "Open the user configurable file joker.m from " <> jokerdir;
keyHelp["Ctrl F2"] =(*Windows,Linux*)keyHelp["Cmd End"] = "Open $UserBaseDirectory by SystemOpen[$UserBaseDirectory].";
keyHelp["Ctrl `"] = "Evaluate Notebook.";
keyHelp["Ctrl Shift /"] =(*Windows*)keyHelp["Cmd Alt I"] =(*MacOSX,Linux*)"Open the init.m file found by FindFile[\"init.m\"] in the front end.";(*Linux*)keyHelp["Ctrl ["]  (*]*)= "Insert [[";(*]]*)(*[[[*)
keyHelp["Ctrl ]"] = "Insert ]]";(*[*)
keyHelp["Ctrl Alt ]"] = "Insert [[]]";




listOfShortcuts={
                  (*keyevent[26]*) "Cmd Escape",
                  (*keyevent[1] *) "Ctrl Tab",
                  (*keyevent[2] *) "Ctrl Shift Tab",
                  (*keyevent[12]*) "Cmd Shift \[UpArrow]",
                  (*keyevent[16]*) "Cmd Shift \[DownArrow]",
                  (*keyevent[7] *) "Cmd Shift X",
                  (*keyevent[11]*) "Ctrl Q",
                  (*keyevent[9] *) "Ctrl R",
                  (*keyevent[13]*) "Ctrl H",
                  (*keyevent[25]*) "Cmd PageDown",
                  (*keyevent[15]*) "Cmd PageUp",
                  (*keyevent[28]*) "Cmd Home",
                  (*keyevent[28]*) "Cmd End",
                  (*keyevent[27]*) "Cmd Alt I",
                  (*keyevent[6] *) "Cmd Alt B",
                  (*keyevent[3] *) "Cmd Alt M",
                  (*keyevent[4] *) "Cmd Alt U",
                  (*keyevent[5] *) "Cmd Alt J",

                  (*keyevent[17]*) "Ctrl Shift Delete",
                  (*keyevent[12]*) "Ctrl D",
                  (*keyevent[12]*) "Ctrl Shift J", 
                  (*keyevent[14]*) "Ctrl `",
                  (*keyevent[12]*) "Ctrl ["(*]*),
                                         (*[*)
                                 "Ctrl ]"
                };





End[];
EndPackage[];