Speak["control s"];
EmitSound[SoundNote[RandomChoice[{"A","B","C","D","E","F","G"}],.1]];
KernelExecute[If[CurrentValue["PluginEnabled"], FrontEndTokenExecute[InputNotebook[], "FindExpression"], FrontEnd`DialogOpen["Find.nb", True]]]