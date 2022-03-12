BeginPackage["keyEventTranslationsGenerator`",{"allPossibleShortcuts1`","mindExtension`"}];
Unprotect["keyEventTranslationsGenerator`*"]; ClearAll["keyEventTranslationsGenerator`*"]; ClearAll["keyEventTranslationsGenerator`Private`*"];

installKeyEventTranslations::usage = "installKeyEventTranslations";

Begin["`Private`"];

some = $allPossibleShortcuts;
Print[mindExtension`transformer1morph2["o"]];



$nonModifierSet1 := {(*non alpha numeric*)"Tab", "Esc", "F1", "F2",
   "F3", "F4", "F5", "F6", "F7", "F8", "F9", "F10", "F11", "F12",
   "Home", "End", "Delete","Backspace", "PageUp", "PageDown", "\[RightArrow]",
   "\[LeftArrow]", "\[UpArrow]", "\[DownArrow]", "Enter","Return", "\\"};

$nonModifierSet2 := {(*alpha numeric*)"A", "B", "C", "D", "E", "F",
   "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S",
   "T", "U", "V", "W", "X", "Y", "Z",(*numerals*)"0", "1", "2", "3",
   "4", "5", "6", "7", "8", "9",(*punctuation*)"`", "-", "=", "[",
   "]", "/", ";", ".", "'"};


nonmod := Union[$nonModifierSet1, $nonModifierSet2];
extraRules1 := Flatten[{# -> ("\"" <> ToLowerCase[#] <> "\"")} & /@ $nonModifierSet2];
extraRules2 := Flatten[{# -> ("\"" <> # <> "\"")} & /@ $nonModifierSet1];
extraRules := Join[Reverse@extraRules2, extraRules1];


rules = {
    "Ctrl Cmd Alt Shift" ->
     "Modifiers -> {Control, Command, Option, Shift},",
    "Cmd Alt Shift" -> "Modifiers -> {Command, Option, Shift},",
    "Ctrl Alt Shift" -> "Modifiers -> {Control, Option,Shift},",
    "Ctrl Cmd Shift" -> "Modifiers -> {Control, Command, Shift},",
    "Ctrl Cmd Alt" -> "Modifiers -> {Control, Command, Option},",
    "Alt Shift" -> "Modifiers -> {Option, Shift},",
    "Cmd Shift" -> "Modifiers -> {Shift, Command},",
    "Cmd Alt" -> "Modifiers -> {Alt, Command},",
    "Ctrl Shift" -> "Modifiers -> {Control, Shift},",
    "Ctrl Alt" -> "Modifiers -> {Control, Option},",
    "Ctrl Cmd" -> "Modifiers -> {Control, Command},",
    "Cmd" -> "Modifiers -> {Command},",
    "Ctrl" -> "Modifiers -> {Control},",
    "Alt" -> "Modifiers -> {Option},",
    "Shift" -> "Modifiers->{Shift},",
    "\[RightArrow]" -> "\"Right\"",
    "\[LeftArrow]" -> "\"Left\"",
    "\[UpArrow]" -> "\"Up\"",
    "\[DownArrow]" -> "\"Down\"",
    "SPACE" -> "\" \"",
    "COMMA" -> "\",\"",
    "Tab" -> "\"Tab\"",
    (*"Enter" -> "\"Enter\"",*)
    (*"Return" -> "\"Return\"",*)
    "\\" -> "\"\\\\\""
    }~Join~extraRules;
dangerousRules = {" " -> ",", "," -> "\",\"", " " -> "\",\"",
   "\\" -> "\\"};

rules = PrependTo[rules, "F10" -> "\"F10\""];

morph[str_] :=
 If[First[Characters[str]] === " ", StringDrop[str, 1], str]

BEFORE = "Item[KeyEvent[";
AFTER[str_] :=
 "], KernelExecute[runShortcut[\"" <>
  mindExtension`transformer1morph2[str] <>
  "\"]], MenuEvaluator -> Automatic];(**)"

morph2[str_] := BEFORE <> StringReplace[morph[str], rules] <> AFTER[str];



FINALMORPH[str_] := Module[{A1, B1, C1, D1, E1},

   A1 = morph2@str;
   B1 = StringDrop[
     First[StringCases[
       StringReplace[A1, "KeyEvent" -> "Reverse@List"],
       "Reverse" ~~ __ ~~ "\"],"]], -1];
   C1 = ToString[InputForm[ToExpression[B1]]];
   D1 = StringReplace[A1, "KeyEvent" ~~ __ ~~ "\"]," -> C1 <> ","];
   E1 = StringReplace[D1, {"{\"" -> "KeyEvent[\"", "}," -> "],"}]
   ];


dirr = "/Users/johncosnett/Library/Mathematica/SystemFiles/FrontEnd/\
TextResources/Macintosh/";
dir = "/Users/johncosnett/Dropbox/05_PROGRAMS/19_brain_computer_\
interface/03_DECK_OF_JOKERS/sub/";

before = Import[
   "/Users/johncosnett/Library/Mathematica/SystemFiles/FrontEnd/\
TextResources/Macintosh/key_header_.txt", "Text"];
after = "
  \n\n
  \n
  Item[KeyEvent[\"KP_Enter\",Modifiers -> {Control, Command, Option, \
Shift}], KernelExecute[runShortcut[\"ctrl_cmd_alt_shift_enter_.m\"]], \
MenuEvaluator -> Automatic]
  \n
   }]";

one = StringRiffle[FINALMORPH /@ some, "\n\n"];
two = before <> StringReplace[one, ";(**)" -> ","] <> after;

installKeyEventTranslations:=Module[{file1,file2},

    file1="/Users/johncosnett/Library/Mathematica/SystemFiles/FrontEnd/TextResources/Macintosh/KeyEventTranslations.m";
    file2="/Users/johncosnett/Library/Mathematica/SystemFiles/FrontEnd/TextResources/Macintosh/KeyEventTranslations.tr";
    If[FileExistsQ[file2],DeleteFile[file2]];
    If[FileExistsQ[file1],DeleteFile[file1]];
    SystemOpen@Export[dirr <> "KeyEventTranslations.m", two, "Text"];
    Export[dirr <> "KeyEventTranslations.tr", two, "Text"];
    Speak["Key Event Translations dot T R was installed"];
    Do[Print["\n\n"],10];
    Do[Print["Key Event Translations dot T R was installed"],5];
    Do[Print["\n\n"],10];
];


End[];
EndPackage[];