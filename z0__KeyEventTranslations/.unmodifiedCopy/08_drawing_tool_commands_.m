Item[KeyEvent["o", CellClass->BoxFormData, BoxClass->GraphEdit2D], FrontEndExecute[Select2DTool["Select"]]];(**)
(* Reassigned to Rectangle in v8; I doubt anyone knows "r" does anything.  Double-click is easier. *)
(* Item[KeyEvent["r", CellClass->BoxFormData, BoxClass->GraphEdit2D], FrontEndExecute[Select2DTool["Reshape"]]],*)
Item[KeyEvent["p", CellClass->BoxFormData, BoxClass->GraphEdit2D], FrontEndExecute[Select2DTool["DrawPoint"]]];(**)
Item[KeyEvent["c", CellClass->BoxFormData, BoxClass->GraphEdit2D], FrontEndExecute[Select2DTool["DrawCircle"]]];(**)
Item[KeyEvent["d", CellClass->BoxFormData, BoxClass->GraphEdit2D], FrontEndExecute[Select2DTool["DrawDisk"]]];(**)
Item[KeyEvent["f", CellClass->BoxFormData, BoxClass->GraphEdit2D], FrontEndExecute[Select2DTool["DrawFreehand"]]];(**)
Item[KeyEvent["a", CellClass->BoxFormData, BoxClass->GraphEdit2D], FrontEndExecute[Select2DTool["DrawArrow"]]];(**)
Item[KeyEvent["l", CellClass->BoxFormData, BoxClass->GraphEdit2D], FrontEndExecute[Select2DTool["DrawLine"]]];(**)
Item[KeyEvent["b", CellClass->BoxFormData, BoxClass->GraphEdit2D], FrontEndExecute[Select2DTool["DrawBox"]]];(**)
(* "q" for Rectangle deprecated in v8 but preserved for "backward compatibilty" for one version *)
Item[KeyEvent["q", CellClass->BoxFormData, BoxClass->GraphEdit2D], FrontEndExecute[Select2DTool["DrawRectangle"]]];(**)
Item[KeyEvent["r", CellClass->BoxFormData, BoxClass->GraphEdit2D], FrontEndExecute[Select2DTool["DrawRectangle"]]];(**)
Item[KeyEvent["s", CellClass->BoxFormData, BoxClass->GraphEdit2D], FrontEndExecute[Select2DTool["DrawPolyline"]]];(**)
Item[KeyEvent["g", CellClass->BoxFormData, BoxClass->GraphEdit2D], FrontEndExecute[Select2DTool["DrawPolygon"]]];(**)
Item[KeyEvent["t", CellClass->BoxFormData, BoxClass->GraphEdit2D], FrontEndExecute[Select2DTool["PlaceText"]]];(**)
Item[KeyEvent["m", CellClass->BoxFormData, BoxClass->GraphEdit2D], FrontEndExecute[Select2DTool["PlaceMath"]]];(**)
Item[KeyEvent["i", CellClass->BoxFormData, BoxClass->GraphEdit2D], FrontEndExecute[Select2DTool["SampleColor"]]];(**)
Item[KeyEvent[".", CellClass->BoxFormData, BoxClass->GraphEdit2D], FrontEndExecute[Select2DTool["GetCoordinates"]]];(**)
Item[KeyEvent["e", CellClass->BoxFormData, BoxClass->GraphEdit2D], FrontEndExecute[Select2DTool["SampleStyle"]]];(**)
Item[KeyEvent["o", CellClass->BoxFormData, BoxClass->GraphEdit3D], FrontEndExecute[Select3DTool["Select"]]];(**)
Item[KeyEvent["i", CellClass->BoxFormData, BoxClass->GraphEdit3D], FrontEndExecute[Select3DTool["SampleColor"]]];(**)
Item[KeyEvent["v", CellClass->BoxFormData, BoxClass->GraphEdit3D], FrontEndExecute[Select3DTool["AdjustView"]]];(**)
Item[KeyEvent["m", CellClass->BoxFormData, BoxClass->GraphEdit3D], FrontEndExecute[Select3DTool["AdjustLights"]]];(**)
