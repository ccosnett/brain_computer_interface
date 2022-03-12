BeginPackage["mind1`",{"mind2`","mind3`"}];
Unprotect["mind1`*"]; ClearAll["mind1`*"]; ClearAll["mind1`Private`*"];


mind1test::usage = "mind1test[]";
abilities::usage = "abilities[] gives a list of extra keyboard shortcuts which were defined by InstallShortcuts[]."
rawGrid::usage = "rawGrid[]";

Begin["`Private`"];




rawGrid:=Grid[  ({toKeyStyle[#],key2Steno[#],keyHelp[#]} & /@ listOfShortcuts), shortcutGridOptions];

abilities:= Export[
  "~/Dropbox/05_PROGRAMS/13_images/abilities.pdf",
  formatShortcutGrid[rawGrid]
]//SystemOpen;


mind1test:=Print["thisFunctionIsInmIND1"];
End[]; 
EndPackage[];