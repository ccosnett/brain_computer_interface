Speak["say word"];
(*SystemOpen["~/Dropbox/05_PROGRAMS/13_images/fingerSpellSquare.pdf"];*)
$nb="/home/conor/Dropbox/05_PROGRAMS/13_images/di.nb";
(*SetSelectedNotebook[CreateDocument[{ExpressionCell[di[""]]},WindowSize->Small]];*)
CreateDocument[{TextCell["S1", "Section"],
  ExpressionCell[x^2, "Input"]}, WindowSize->{ 500, 500}
]//SetSelectedNotebook;
(*EmitSound[SoundNote[RandomChoice[{"A","B","C","D","E","F","G"}],.1]];*)
(*Paste["ctrl cmd alt v"];*)
do["SelectAll"];do["DeletePrevious"];
do["MoveNextLine"];Paste["di[\"\"]"];do["MovePrevious"];do["MovePrevious"];