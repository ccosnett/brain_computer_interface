(*Speak[" space"];*)
(*EmitSound[SoundNote[RandomChoice[{"A","B","C","D","E","F","G"}],.1]];*)
(*Paste[" "];*)
$styl=First["Style"/.Developer`CellInformation[InputNotebook[]]];

(*Paste[$styl];*)
If[
    Or[
        $styl==="Text",
        $styl==="Item",
        $styl==="Section"
    ]

    ,(Print[$styl];Print[" yes space"];Paste[" "])
    ,(Print[$styl];Print[" no space"];Paste[""])
];
