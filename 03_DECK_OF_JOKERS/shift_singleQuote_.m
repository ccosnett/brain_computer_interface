Speak["shift single quote"];
EmitSound[SoundNote[RandomChoice[{"A","B","C","D","E","F","G"}],.1]];
Paste["\"\""];
FrontEndTokenExecute["MovePrevious"]