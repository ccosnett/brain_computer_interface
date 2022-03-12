BeginPackage["abilityInstaller`"];
Unprotect["abilityInstaller`*"]; ClearAll["abilityInstaller`*"]; ClearAll["abilityInstaller`Private`*"];

os::usage = "os[]";



keytext::usage = "keytext[]";
mykeytext1::usage = "mykeytext1[]";
mykeytext2VersionUpdated::usage = "mykeytext2VersionUpdated[]";
myjoker1filename::usage = "myjoker1filename[]";
myjokerdir::usage = "myjokerdir[]";
theInstallationKeyEvents::usage = "theInstallationKeyEvents[]";
mykeyeventtrans::usage = "mykeyeventtrans[]";
exportCleanJoker1::usage = "exportCleanJoker1[]";
exportCleanMyKeyEventsTrans::usage = "exportCleanMyKeyEventsTrans[]";

mindExpansionKeyEventsText::usage = "mindExpansionKeyEventsText[]";
moveACopyOfKeyEventsToPycharmForPerusal::usage = "moveACopyOfKeyEventsToPycharmForPerusal[]";

(**********************************************)
(******______ability_paths_____________********)
abilityText::usage = "abilityText[n]";
abilityFolder::usage = "abilityFolder[]";
abilityInstall::usage = "abilityInstall[]";
$myKeyEventTransFileString::usage = "$myKeyEventTransFileString[]";
(**__________ability_paths_____________********)
(**********************************************)

Begin["`Private`"];

$myKeyEventTransFileString := enWrap[
   abilityText[1]   (*mine*)
  ,abilityText[2]   (*evaluation*)
  ,abilityText[3]   (*cursor_control*)
  ,abilityText[4]   (*selection*)
  ,abilityText[5]   (*notebook_window_control*)
  ,abilityText[6]   (*input*)
  ,abilityText[7]   (*typesetting_input*)
  ,abilityText[8]   (*typesetting_motion_commands*)
  ,abilityText[9]   (*drawing_tool_commands*)
  ,abilityText[10]  (*miscellaneous_menu_commands*)
  ,abilityText[11]      (*rolf_mertig*)
  ,abilityText[12]  (*joker1*)
  ,abilityText[13]  (*joker2*)
  ,abilityText[14]  (*joker3*)
];


(*********installer stuff****************)
(***installing joker2.m ***)

os="Macintosh";
mykeyeventtrans := FileNameJoin[{$UserBaseDirectory, "SystemFiles", "FrontEnd", "TextResources", os, "KeyEventTranslations.tr"}];
theInstallationKeyEvents :=FileNameJoin[{$InstallationDirectory, "SystemFiles", "FrontEnd",
  "TextResources", os, "KeyEventTranslations.tr"}];
mindExpansionKeyEventsText := Import[$HomeDirectory <>"/Dropbox/05_PROGRAMS/19_brain_computer_interface/KeyEventTranslations.m","Text"];
myjoker1filename = FileNameJoin[{$UserBaseDirectory, "SystemFiles", "FrontEnd", "TextResources", os, "joker1.m"}];
myjokerdir = DirectoryName[myjoker1filename];
exportCleanJoker1 := Module[{},Export[
   myjoker1filename, "
   (* Define your own shortcut definitions here, without restarting \
the front end.
      The action defined here is executed by Ctrl T (Windows / Linux) \
 or Ctrl D (MacOSX)
   *)

   (* uncomment an example below or add your own definitions, save \
this file without renaming it and use it directly *)

   (* Example 1: copy the selection as LaTeX. Evaluating sel pastes \
the clipboard *)

   (*
     FrontEnd`CopyToClipboard[FrontEnd`CopyAsTeX[]];
     (* and also function assignments: *)
     sel := Paste[];
   *)

   (* Example 2:  wrap selection in [ ] *)

   (*
     NotebookApply[SelectedNotebook[], RowBox[{\"[\", \
\"\\[SelectionPlaceholder]\", \"]\"}], Before]
   *)


   ",
   "Text",
   CharacterEncoding :> $CharacterEncoding
   ]];
exportCleanMyKeyEventsTrans:=Module[{},CopyFile[theInstallationKeyEvents, mykeyeventtrans]];
(*installKeyEventTrans:=*)
keytext := Import[mykeyeventtrans, "Text"];

(*********installer stuff****************)



(*** extending the default KeyEventTranslations.tr from $InstallationDirectory **)
(*** extending the default KeyEventTranslations.tr from $InstallationDirectory **)
mykeytext1 :=
 StringReplace[keytext,
  "EventTranslations[{"(*]*):>
   StringJoin["EventTranslations[{\n "(*]*), mykeyevents, "\n "]];
(*looks like keytext 1 is find and the 2 is redundant as I am using v11*)
mykeytext2VersionUpdated :=
  StringJoin[
   Composition[# <> "\n" &,
     Function[
      StringReplace[#,
       "Item[KeyEvent[\"" ~~ it_ ~~
         "\", Modifiers" ~~ (mo__ /; StringLength[mo] < 30) ~~
         "\"Redo\"]" (*]*):>
        "If[$VersionNumber < 10, {}, Item[KeyEvent[" ~~ it ~~
         ", Modifiers" ~~ mo ~~ " \"Redo\"]]" (*]*), 1]],
     Function[
      StringReplace[#,
       "Item[KeyEvent[\"Redo\"]"(*]*)->
        "If[$VersionNumber < 10, {}, Item[KeyEvent[\"Redo\"]]" (*]*),
       1]]] /@ ImportString[mykeytext1, "Lines",
     CharacterEncoding :> $CharacterEncoding]];


(*** extending the default KeyEventTranslations.tr from $InstallationDirectory **)
(*** extending the default KeyEventTranslations.tr from $InstallationDirectory **)

(***********************************************)
(******______ability_paths_____________*********)
abilityFolder:="~/Dropbox/05_PROGRAMS/19_brain_computer_interface/z0__KeyEventTranslations/";
abilityText[n_]:=StringReplace[Import[FileNames["*", abilityFolder][[n]], "Text"],
 ";(**)" -> ","];
enWrap[stringModule__] := Module[{},
   str0 =
    Import["/Users/johncosnett/Dropbox/05_PROGRAMS/19_brain_computer_\
interface/z0__KeyEventTranslations/zStringDirectory/01_before.txt",
     "Text"];
   str1 =
    Import["/Users/johncosnett/Dropbox/05_PROGRAMS/19_brain_computer_\
interface/z0__KeyEventTranslations/zStringDirectory/02_after.txt", "Text"];
   finalFileString = StringJoin[str0, Sequence[stringModule], str1]
   ];

abilityInstall := Module[{},
  If[FileExistsQ[mykeyeventtrans], DeleteFile[mykeyeventtrans]];
  Export[ myjokerdir <> "/KeyEventTranslations.tr", $myKeyEventTransFileString, "Text"]
  ];


(**__________ability_paths_____________*********)
(***********************************************)


moveACopyOfKeyEventsToPycharmForPerusal := Module[{},
  localKeyEvents =
   "/Users/johncosnett/Dropbox/05_PROGRAMS/19_brain_computer_\
interface/KeyEventTranslations.m";
  If[FileExistsQ[localKeyEvents], DeleteFile[localKeyEvents];
   Print["deleting old keyevents in pycharm"]];
  Export[localKeyEvents, $myKeyEventTransFileString, "text"]

  ]


End[];
EndPackage[];