BeginPackage["stenoCode2`"];
numerize::usage = "numerize[str]";
fresh::usage = "fresh";
challenger1::usage = "challenger1";
challenger2::usage = "challenger2";
challenger3::usage = "challenger3";
theCollection::usage = "theCollection[numerizedChord]";
collection1::usage = "collection1[]";
pivotSort::usage = "pivotSort[collection]";
$megaList::usage = "$megaList[]";
splitter::usage = "splitter[pivotSortedList]";
stenoSplitter::usage = "stenoSplitter2[code]";
uniqueize::usage = "uniqueize[collection]";
deUniqueize::usage = "deUniqueize[]";

Begin["`Private`"];

numerize[str_] := LetterNumber[Characters[StringReplace[str, "*" -> "Q"]]];
fresh := numerize["STKPWHRAO*-EUFRPBLGTSDZ"];
challenger1 := "STPH-RBGS";
challenger2 := "SROR";
challenger3 := "KHR*RBG";





theCollection[numerizedChord_] := Module[{i, k, stale, collector},
   stale = PadRight[numerizedChord, 23];
   collector = {};
   i = 1;
   k = 1;
   Do[
    If[
      stale[[k]] == i,
      (AppendTo[collector, {i, 1}]; k++),
      AppendTo[collector, {i, 0}]
      ];

    , {i, fresh}];
   collector
   ];

collection1:= theCollection[challenger1//numerize];


additions = {0.06745680269193746`, 0.06841905243452456`,
   0.010434214706415118`, 0.029416711383753152`, 0.0884646191634369`,
   0.012109187835789917`, 0.09826596552905922`, 0.047173905769004654`,
    0.07358276336360908`, 0.09055444465018128`, 0.08661770018966314`,
   0.04563808721781959`, 0.0643999484665651`, 0.015750897222558374`,
   0.010653427121492337`, 0.07191504600942814`, 0.04984179019873408`,
   0.08599942843186781`, 0.07790947945849011`, 0.09412093831210402`,
   0.016128640634268526`, 0.04743591683824294`, 0.04148884099861605`};

uniqueize[collection_] := collection + ({#, 0} & /@ additions);

pivotSort[collection_] := If[First@First@Position[collection, #] < 11, #~Join~{111}, #~ Join~{666}] & /@ collection;

deUniqueize[collection_] := collection - ({#, 0, 0} & /@ additions);

$megaList := pivotSort[collection1];



splitter[lis_] := Module[{lis2,protoLeft,left,right},
   lis2 = DeleteCases[lis, {0, _, _}];
   protoLeft = Cases[lis2, {_, _, 111}];
   protoRight = Complement[lis2, protoLeft];
   left = Map[ToUpperCase@FromLetterNumber@First@# &]@DeleteCases[#, {_, 0, _}] &@protoLeft;
   right = Map[ToUpperCase@FromLetterNumber@First@# &]@DeleteCases[#, {_, 0, _}] &@protoRight;
   {left, right} /. "Q" -> "*"
   ];


stenoSplitter[code_]:= splitter@Round@deUniqueize@pivotSort@uniqueize@theCollection@numerize@code;


End[];
EndPackage[];