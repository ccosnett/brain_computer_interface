BeginPackage["uninstaller`"];
theTwoUserBaseFiles::usage = "theTwoUserBaseFiles[]";
uninstallJokerEtc::usage = "uninstallJokerEtc[] this uninstalls the two files";
Begin["`Private`"];

theTwoUserBaseFiles:=Map[FileNameJoin[{$UserBaseDirectory, "SystemFiles", "FrontEnd", "TextResources", Switch[$OperatingSystem, "MacOSX", "Macintosh", "Windows", "Windows", "Unix", "X"], #}] &, {"KeyEventTranslations.tr", "joker1.m","joker2.m"}];

uninstallJokerEtc := (If[FileExistsQ[#], DeleteFile[#];If[! FileExistsQ[#], Print["Deleted " <> #], Print["Could not delete " <> #]]] & /@theTwoUserBaseFiles);
End[];
EndPackage[];