BeginPackage["mind3`"];
$jokerdir::usage = "$jokerdir[]";
keyStyle::usage = "keyStyle[s]";
toKeyStyle::usage = "toKeyStyle[keyshortcut]";
formatShortcutGrid::usage = "formatShortcutGrid[grid]";
shortcutGridOptions::usage = "shortcutGridOptions[]";


Begin["`Private`"];
(*$jokerdir = StringReplace[ FileNameJoin[{$UserBaseDirectory, "SystemFiles", "FrontEnd", "TextResources", Switch[$OperatingSystem, "MacOSX", "Macintosh", "Windows", "Windows", "Unix", "X"] }], $UserBaseDirectory -> "$UserBaseDirectory"];*)
$jokerdir :=
  Module[{},
   FileNameJoin[{$UserBaseDirectory, "SystemFiles", "FrontEnd",
     "TextResources",
     Switch[$OperatingSystem, "MacOSX", "Macintosh", "Windows",
      "Windows", "Unix", "X"]}]];



toKeyStyle1[{keyshort_String, desc_String}] := ({Row @ Riffle[ keyStyle /@ StringSplit[keyshort] , " + "], desc });
toKeyStyle1[{a_, b_Symbol}] := {a, b};

toKeyStyle[keyshort_String] := (Row@Riffle[keyStyle /@ StringSplit[keyshort], " + "]);
keyStyle[s_] := ToString[ Framed[ Style[s, FontFamily -> "Courier", FontColor -> GrayLevel[0.365], FontWeight -> "Bold"], ImageMargins -> {{2, 2}, {2, 2}}, FrameStyle -> GrayLevel[0.8], Background -> GrayLevel[0.965] ], StandardForm];

formatShortcutGrid = Style[StringReplace[ToString[#, StandardForm], {"Cmd" -> "\[CloverLeaf]", "Alt" -> "Alt"}], "Text"] &;
shortcutGridOptions = {Alignment -> {Left, Center}, Dividers -> All, FrameStyle -> LightGray, Spacings -> {2, 1}};


(*
formatShortcutGrid[Grid[toKeyStyle /@ ({#, keyHelp[#]} & /@ listOfShortcuts), shortcutGridOptions]]
*)


End[];
EndPackage[];