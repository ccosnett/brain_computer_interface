Speak["Enter Text mode"];
(*EmitSound[SoundNote[RandomChoice[{"A","B","C","D","E","F","G"}],.1]];*)
(*Paste["ctrl cmd alt m"];*)
FrontEndExecute@FrontEndToken[SelectedNotebook[], "Style", "ItemParagraph"]#