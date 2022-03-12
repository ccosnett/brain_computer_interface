(*Speak["ctrl cmd ]"];*)
(*EmitSound[SoundNote[RandomChoice[{"A","B","C","D","E","F","G"}],.1]];*)
(*Paste["ctrl cmd ]"];*)


FrontEndExecute[{
    FrontEnd`NotebookWrite[FrontEnd`InputNotebook[],
      "\[LeftDoubleBracket]", After],
    FrontEnd`NotebookWrite[FrontEnd`InputNotebook[],
      "\[RightDoubleBracket]", Before]
}]
