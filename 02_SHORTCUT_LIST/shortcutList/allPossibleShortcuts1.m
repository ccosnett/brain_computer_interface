BeginPackage["allPossibleShortcuts1`",{"mind1`","mind2`","mind3`"}];
Unprotect["allPossibleShortcuts1`*"]; ClearAll["allPossibleShortcuts1`*"]; ClearAll["allPossibleShortcuts1`Private`*"];
monoPressList::usage = "monoPressList";
allShort::usage = "allShort[]";
modifierList::usage = "modifierList";
nonModifierSet1::usage = "nonModifierSet1";
nonModifierSet2::usage = "nonModifierSet2";

(****)
modifierCombos::usage = "modifierCombos";
formatCombos::usage = "formatCombos[combos]";
(****)

$allPossibleShortcuts::usage = "$allPossibleShortcuts[]";

Begin["`Private`"];


(*************************************************)



$allPossibleShortcuts:=Flatten[Table[StringRiffle[{i, j}], {i, modifierCombos}, {j, nonModifierSet2~Join~nonModifierSet1}]];


(***************Formatting********************)
modifierCombos := StringRiffle /@ # &[Subsets[modifierList]];

formatCombos[combos_] := Column[formatShortcutGrid /@ (toKeyStyle /@ combos)];
(***************Formatting********************)



allShort:="its alive";


monoPressList := {
  "F1",
  "F2",
  "F3",
  "F4",
  "F5",
  "F6",
  "F7",
  "F8",
  "F9",
  "F10",
  "F11",
  "F12",
  "Home",
  "End",
  "PageUp",
  "PageDown"
};

modifierList:={
  "Ctrl",
  "Cmd",
  "Alt",
  "Shift"
};

nonModifierSet1:={
(*non alpha numeric*)
    "Tab",
    "Esc",
    "F1",
    "F2",
    "F3",
    "F4",
    "F5",
    "F6",
    "F7",
    "F8",
    "F9",
    "F10",
    "F11",
    "F12",
    "Home",
    "End",
    "Delete",
    "Backspace",
    "PageUp",
    "PageDown",
    "\[RightArrow]",
    "\[LeftArrow]",
    "\[UpArrow]",
    "\[DownArrow]",
    "Enter",
    "Return"
};

nonModifierSet2:={

(*alpha numeric*)

  "A",
  "B",
  "C",
  "D",
  "E",
  "F",
  "G",
  "H",
  "I",
  "J",
  "K",
  "L",
  "M",
  "N",
  "O",
  "P",
  "Q",
  "R",
  "S",
  "T",
  "U",
  "V",
  "W",
  "X",
  "Y",
  "Z",

(*numerals*)

  "0",
  "1",
  "2",
  "3",
  "4",
  "5",
  "6",
  "7",
  "8",
  "9",

(*punctuation*)

  "`",
  "-",
  "=",
  "[",
  "]",
  "\\",
  "/",
  ";",
  "SPACE",
  "COMMA",
  ".",
  "'"
};

keypadSet={
  "KP_0",
  "KP_1",
  "KP_2",
  "KP_3",
  "KP_4",
  "KP_5",
  "KP_6",
  "KP_7",
  "KP_8",
  "KP_9",
  "KP_Add",
  "KP_Begin",
  "KP_Decimal",
  "KP_Delete",
  "KP_Divide",
  "KP_Down",
  "KP_End",
  "KP_Enter",
  "KP_Equal",
  "KP_F1",
  "KP_F2",
  "KP_F3",
  "KP_F4",
  "KP_Home",
  "KP_Insert",
  "KP_Left",
  "KP_Multiply"
};
(*we will sort this shit out after we get an emulator and during a subsequent high cog period*)

End[];
EndPackage[];