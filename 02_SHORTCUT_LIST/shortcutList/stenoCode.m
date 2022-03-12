BeginPackage["stenoCode`",{"stenoCode2`"}];
key2Steno::usage = "key2Steno[shortcutStr]";
stenoCodeHighlander::usage = "stenoCodeHighlander[{leftHandList, rightHandList}]";
stenoSplitter::usage = "stenoSplitter[code]";

rightCharacters::usage = "rightCharacters[]";
rightCharacters2::usage = "rightCharacters2[]";
leftCharacters::usage = "leftCharacters[]";

stenoFormattor::usage = "stenoFormattor[code]";

Begin["`Private`"];


stenoFormattor[code_] := stenoCodeHighlander[stenoSplitter[code]];

rightCharacters  = Drop[Characters["STKPWHRAO*EUFRPBLGTSDZ"], 10];

rightCharacters2 = Drop[Characters["STKPWHRAO*EUFRPBLGTSDZ"], 10]/. {
  "P" -> "P2", "R" -> "R2", "S" -> "S2", "T" -> "T2"};
leftCharacters   = Take[Characters["STKPWHRAO*EUFRPBLGTSDZ"], 10];
stenoCodeHighlander[{leftHandList_, rightHandList_}] := Module[{list1Left, list1Right, s1, s2, s3},
  list1Left = {"S", "T", "K", "P", "W", "H", "R", "A", "O", "*"};
  list1Right = {"E", "U", "F", "R", "P", "B", "L", "G", "T", "S", "D",
     "Z"};
  (*listOfElOfL={"T","K"};
  listOfElOfR={"E","U","P","B","L","G","T"};*)

  listOfElOfL = leftHandList;
  listOfElOfR = rightHandList;
  s1 = StyleBox[#, FontColor -> Gray] &;
  s2 = StyleBox[#, FontColor -> Green] &;
  s3 = StyleBox[#, FontColor -> Yellow] &;
  checkerL = If[ContainsAny[listOfElOfL, {#}], s2[#], s1[#]] &;
  checkerR = If[ContainsAny[listOfElOfR, {#}], s3[#], s1[#]] &;
  newLeft = DisplayForm[Row[(checkerL /@ list1Left)]];
  newRight = DisplayForm[Row[(checkerR /@ list1Right)]];
  Row[{Highlighted[newLeft, Background -> Lighter[Gray, 0.3]],
    Highlighted[newRight, Background -> Lighter[Gray, 0.1]]}]
  ];



key2Steno[str1_String]:=Module[{},Highlighted[Style["STKPWHRAO*EUFRPBLGTSDZ",FontSize->8]]];

End[];
EndPackage[];

