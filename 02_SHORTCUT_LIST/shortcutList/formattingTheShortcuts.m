BeginPackage["formattingTheShortcuts`",{"allPossibleShortcuts1`","englishDescriptions`","stenoCode`"}];
rawShortcutGrid::usage = "rawShortcutGrid[]";

Begin["`Private`"];

keyStyle2[s_] := ToString[ Framed[ Style[s, FontColor -> GrayLevel[0.365], FontWeight -> "Bold"], ImageMargins -> {{2, 2}, {2, 2}}, FrameStyle -> GrayLevel[0.8], Background -> GrayLevel[0.965] ], StandardForm];

toKeyStyle2[keyshort_String] := (Row@Riffle[keyStyle2 /@ StringSplit[keyshort], " + "]);




shortcutGridOption3= {ItemSize -> Full};
shortcutGridOption2 = {Alignment -> {Left, Left, Left}, Dividers -> {{False,True, True,True,False}, False}, FrameStyle -> LightGray, Spacings -> {0.5, 0}};

shortcutGridOption1 = Background -> {None, {{White, Lighter[Blend[{Blue, Green}], 0.8]}}};
formatShortcutGrid = Style[StringReplace[ToString[#, StandardForm], {(*"Cmd" -> "\[CloverLeaf]", *)"Alt" -> "Alt"}], "Text"] &;

(************************************************************************)
(************************************************************************)
rawShortcutGrid:= Grid[

  ({toKeyStyle2[#],stenoFormattor[kh[#][[1]]],kh[#][[2]]} & /@ $allPossibleShortcuts)


  ,shortcutGridOption1
  ,shortcutGridOption2
  ,shortcutGridOption3

]//formatShortcutGrid;

(************************************************************************)
(************************************************************************)



(*SystemOpen@Export[$Desktop <> "new.pdf", rawShortcutGrid]*)
(*generateShortcutGrid := SystemOpen@Export[$jokerdir <> "/shortcutGrid.pdf", rawShortcutGrid]*)

End[];
EndPackage[];