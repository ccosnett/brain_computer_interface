BeginPackage["shortcutList`",{"formattingTheShortcuts`"}];
listOfShortcutsMertig::usage = "listOfShortcuts[]";
generateShortcutGrid::usage = "generateShortcutGrid";
shortcuts::usage = "shortcuts";
$imagesDir::usage = "$imagesDir";
Begin["`Private`"];
shortcuts:=SystemOpen[$imagesDir<>"/shortcuts.pdf"];

$jokerdir := Module[{},
   FileNameJoin[{$UserBaseDirectory, "SystemFiles", "FrontEnd",
     "TextResources",
     Switch[$OperatingSystem, "MacOSX", "Macintosh", "Windows",
      "Windows", "Unix", "X"]}]];
$imagesDir := $HomeDirectory <> "/Dropbox/05_PROGRAMS/13_images/";
generateShortcutGrid := Module[
  {filee},
  filee=Export[$jokerdir <> "/shortcutGrid.pdf", rawShortcutGrid];
  SystemOpen@filee;
  If[FileExistsQ[$imagesDir<>"/shortcuts.pdf"],DeleteFile[$imagesDir<>"/shortcuts.pdf"]];
  CopyFile[filee,$imagesDir<>"/shortcuts.pdf"];

];


listOfShortcutsMertig={
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

