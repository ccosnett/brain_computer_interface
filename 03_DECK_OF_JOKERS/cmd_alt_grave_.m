Speak["cycle notebooks forward"];
(*do["CycleNotebooksForward"];*)
(*EmitSound[SoundNote[RandomChoice[{"A","B","C","D","E","F","G"}],.1]];*)
(*Paste["cmd alt `"];*)
(*$do["TileWindowsTalls"]*)
(*Paste["of"]*)


(*Paste["to "];*)
$info=Developer`CellInformation[InputNotebook[]];
(*$styl=First["Style"/.Developer`CellInformation[InputNotebook[]]];*)
If[
    $info===$Failed,
    (Speak["not in cell"];$styl=1;)
    ,((*Paste@*)($styl=Last[Flatten["Style"/.$info]]);Speak["in cell type"<>ToString[$styl]];)
    (*(Paste[Developer`CellInformation[InputNotebook[]]];Speak["in cell"])*)
];
(*Paste[Characters[$styl]];*)

(*Paste[$styl];*)
If[
    Or[
        $styl==="Text",
        $styl==="Item",
        $styl==="Section",
        $styl==="Title"
    ]
,Paste["to "], If[ToString[$styl]==="Input",Speak["its an input"]]
    (*,(Print[$styl];Print[" yes space"];Paste[" "])*)
    (*,(Print[$styl];Print[" no space"];Paste[" "])*)
];
