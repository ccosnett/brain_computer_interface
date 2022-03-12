BeginPackage["mindExtension`", {(*"mind1`","mind2`","mind3`","corticalColumn1`","corticalColumn2`",*)"abilities`","abilityInstaller`","abilityUninstaller`"}];
Unprotect["mindExtension`*"]; ClearAll["mindExtension`*"]; ClearAll["mindExtension`Private`*"];
copyKeyEventTranslationsPath::usage = "copyKeyEventTranslationsPath[]";
copyJokerDirectoryPath::usage = "copyJokerDirectoryPath[]";
copyModuleHead::usage = "copyModuleHead[]";
frontEndTokens::usage = "frontEndTokens";
mmaInterfaceLink1::usage = "mmaInterfaceLink1";
mmaInterfaceLink2::usage = "mmaInterfaceLink2";
mmaInterfaceLink3::usage = "mmaInterfaceLink3";
mmaInterfaceLink4::usage = "mmaInterfaceLink4";
mmaInterfaceLink5::usage = "mmaInterfaceLink5";
mmaInterfaceLink6::usage = "mmaInterfaceLink6";
mmaInterfaceLink7::usage = "mmaInterfaceLink7";
mmaInterfaceLink8::usage = "mmaInterfaceLink8";
mmaInterfaceLink9::usage = "mmaInterfaceLink9";
mmaInterfaceLink10::usage = "mmaInterfaceLink10";
mmaInterfaceLink11::usage = "mmaInterfaceLink11";
mmaInterfaceLink12::usage = "mmaInterfaceLink12";
mmaInterfaceLink13::usage = "mmaInterfaceLink13";
mmaInterfaceLink14::usage = "mmaInterfaceLink14";
mmaInterfaceLink15::usage = "mmaInterfaceLink15";
mmaShortcutDoc1::usage = "mmaShortcutDoc1";
ev::usage = "ev[codestr]";
$Desktop::usage = "$Desktop[]";
$Applications::usage = "$Applications[]";
mmaInterfaceLink0::usage = "mmaInterfaceLink0[]";
f1::usage = "f1[expr]";
test1::usage = "test1[]";

modifierz::usage = "modifierz";
windowSwitcherMouse::usage = "windowSwitcherMouse";

(*Get @ FileNameJoin[{DirectoryName[$InputFileName], "mind1.m"}];*)
transformer1morph2::usage = "transformer1morph2[str]";

runShortcut::usage = "runShortcut[str]";
runShortcut2::usage = "runShortcut[str]";
Begin["`Private`"];

transformer1rules = {
  " " -> "_",
  "[" -> "leftSquareBracket",
  "]" -> "rightSquareBracket",
  "\\" -> "backSlash",
  "/" -> "forwardSlash",
  ";" -> "semiColon",
  "." -> "period",
  "'" -> "singleQuote",
  "`" -> "grave",
  "-" -> "dash",
  "=" -> "equals",
  "\[RightArrow]" -> "rightArrow",
  "\[LeftArrow]" -> "leftArrow",
  "\[UpArrow]" -> "upArrow",
  "\[DownArrow]" -> "downArrow"
  };

transformer1morph[str_] := ToLowerCase[str];

transformer1morph2[str_] := StringReplace[transformer1morph[str], transformer1rules] <> "_.m";

transformer1morph3[str_] := Export[dir <> transformer1morph2[str], "Speak[\"" <> transformer1morph[str] <> "\"];", "Text"];




runShortcut[str_String]:=Get["~/Dropbox/05_PROGRAMS/19_brain_computer_interface/03_DECK_OF_JOKERS/"<>str];
runShortcut2[str_String]:=Get["~/Dropbox/05_PROGRAMS/19_brain_computer_interface/03_DECK_OF_JOKERS/sub/"<>str];


            ev[ code_] := Module[{},
        myshell = "/bin/zsh";(*or "/bin/sh"*)

  boilerPlate =
   "#! " <> myshell <>
    "\nsource \
/home/conor/Dropbox/05_PROGRAMS/000_hyper_graph/02_zsh_scripts/04_\
pathController_linux_.sh\nsource \
/home/conor/Dropbox/05_PROGRAMS/00_mathematica_shtuff/\
pathVariableLinux.sh;\nhi () {say \'it works\'\n" <> code <> " };\n";
             Export["~/file2source", boilerPlate, "String"];

  RunProcess[myshell, "StandardOutput", "source ~/file2source ; hi"] ];

(*ev["mrl"]*)d



mind1test;
test1:=mind1test;

$Desktop:=StringJoin[{$HomeDirectory,"/Desktop/"}];
$Applications:=FileNameJoin[{$UserBaseDirectory, "Applications"}];
f1[str_String]:=Documentation`HelpLookup[str];
f1[expr_]:=f1[ToString[expr]];
docs= Documentation`HelpLookup@#&;
mmaInterfaceLink0 := SystemOpen["https://mathematica.stackexchange.com/questions/68864/customize-keybindings-without-modifying-files-in-the-installation-directory/68871#68871"];
mmaInterfaceLink1 := docs@"ref/CurrentValue";
mmaInterfaceLink2 := docs@"guide/GamepadAndDeviceInterface";
mmaInterfaceLink3 := docs@"ref/SystemDialogInput";
mmaInterfaceLink4 := docs@"guide/FrontEndTokens";
mmaInterfaceLink5 := docs@"guide/EditTokens";
mmaInterfaceLink6 := docs@"tutorial/UsingTheInputAssistant";
mmaInterfaceLink7 := docs@"guide/WolframPredictiveInterface";
mmaInterfaceLink8 := docs@"ref/EventHandler";
mmaInterfaceLink9 := SystemOpen@"https://mathematica.stackexchange.com/questions/158839/how-do-i-make-a-keyboard-shortcut-to-change-the-color-of-selected-text?rq=1";
mmaInterfaceLink10:= docs@"tutorial/ManipulatingNotebooksOverview";
mmaInterfaceLink11:=SystemOpen@"https://mathematica.stackexchange.com/questions/193111/all-the-group-formatting-available-in-mathematica";
mmaInterfaceLink12:=SystemOpen@"https://www.nanoant.com/mathematica/making-friends-with-mathematica";
mmaShortcutDoc1 :=Documentation`HelpLookup@"tutorial/KeyboardShortcutListing";
mmaInterfaceLink13:=SystemOpen@"https://stackoverflow.com/questions/21608617/zsh-path-no-such-file-or-directory-where-do-i-unset-it";
mmaInterfaceLink14:=SystemOpen@"https://mathematica.stackexchange.com/questions/5246/detecting-keyup-events";
mmaInterfaceLink15:=SystemOpen["https://mathematica.stackexchange.com/questions/18548/use-mathematica-as-a-terminal"];


copyKeyEventTranslationsPath:=CopyToClipboard[FileNameJoin[{$InstallationDirectory, "SystemFiles", "FrontEnd", "TextResources", "Macintosh"}]];
copyJokerDirectoryPath:=CopyToClipboard[FileNameJoin[{$UserBaseDirectory, "SystemFiles", "FrontEnd", "TextResources", "Macintosh"}]]
copyModuleHead:= CopyToClipboard["Module[{},"];

frontEndTokens:={
"AboutBoxDialog",
"Above",
"AlignBottoms",
"AlignCentersHorizontally",
"AlignCentersVertically",
"AlignLeftSides",
"AlignRightSides",
"AlignTops",
"AllWindowsFront",
"BackgroundDialog",
"Balance",
"Below",
"BringToFront",
"CellContextDialog",
"CellGroup",
"CellLabelsToTags",
"CellMerge",
"CellSplit",
"CellTagsEditDialog",
"CellTagsEmpty",
"CellTagsFind",
"CellUngroup",
"Clear",
"ClearCellOptions",
"ClearNoAutoScroll",
"Close",
"CloseAll",
"CloseMain",
"ColorSelectorDialog",
"ColorsPanel",
"CompleteSelection",
"Copy",
"CopyCell",
"CopySpecial",
"CreateCounterBoxDialog",
"CreateGridBoxDialog",
"CreateHyperlinkDialog",
"CreateInlineCell",
"CreateValueBoxDialog",
"Cut",
"CycleNotebooksBackward",
"CycleNotebooksForward",
"DebuggerAbort",
"DebuggerClearAllBreakpoints",
"DebuggerContinue",
"DebuggerContinueToSelection",
"DebuggerFinish",
"DebuggerResetProfile",
"DebuggerShowProfile",
"DebuggerStep",
"DebuggerStepIn",
"DebuggerStepInBody",
"DebuggerStepOut",
"DebuggerToggleBreakpoint",
"DebuggerToggleWatchpoint",
"DeleteBibAndNotes",
"DeleteBibReference",
"DeleteGeneratedCells",
"DeleteIndent",
"DeleteInvisible",
"DeleteNext",
"DeleteNextExpression",
"DeletePrevious",
"DeletePreviousWord",
"DistributeBottoms",
"DistributeCentersHorizontally",
"DistributeCentersVertically",
"DistributeLeftSides",
"DistributeRightSides",
"DistributeSpaceHorizontally",
"DistributeSpaceVertically",
"DistributeTops",
"DuplicatePreviousInput",
"DuplicatePreviousOutput",
"EditBibNote",
"EditStyleDefinitions",
"EnterSubsession",
"Evaluate",
"EvaluateCells",
"EvaluateInitialization",
"EvaluateNextCell",
"EvaluateNotebook",
"EvaluatorAbort",
"EvaluatorHalt",
"EvaluatorInterrupt",
"EvaluatorQuit",
"EvaluatorStart",
"ExitSubsession",
"ExpandSelection",
"ExpirationDialog",
"ExplainBeepDialog",
"ExplainColoringDialog",
"ExpressionLinewrap",
"FileNameDialog",
"FindDialog",
"FindEvaluatingCell",
"FindNextMatch",
"FindNextMisspelling",
"FindNextWarningColor",
"FindPreviousMatch",
"FinishNesting",
"FixCellHeight",
"FixCellWidth",
"FontColorDialog",
"FontFamilyB",
"FontPanel",
"FontSizeDialog",
"Fraction",
"FrontEnd`ButtonNotebook[]",
"FrontEnd`EvaluationNotebook[]",
"FrontEndHide",
"FrontEnd`InputNotebook[]",
"FrontEnd`MessagesNotebook[]",
"FrontEnd`Private`nb",
"FrontEndQuit",
"FrontEndQuitNonInteractive",
"FrontEndToken[FrontEnd`ButtonNotebook[],\"HyperlinkGo\",`distance`]",
"GenerateImageCaches",
"GenerateNotebook",
"GeneratePalette",
"GraphicsAlign",
"GraphicsBoxOptionsImageSize",
"GraphicsCoordinatesDialog",
"GraphicsOriginalSize",
"GraphicsPlotRangeAll",
"GraphicsPlotRangeAutomatic",
"GraphicsPlotRangeFixed",
"GraphicsRender",
"Group",
"HandleShiftReturn",
"HeadersFootersDialog",
"HelpDialog",
"HyperlinkGo",
"HyperlinkGoBack",
"HyperlinkGoForward",
"ImageToAutomatic",
"ImageToBinary",
"ImageToBit",
"ImageToBit16",
"ImageToByte",
"ImageToCMYK",
"ImageToggleAlphaChannel",
"ImageToggleInterleaving",
"ImageToGrayscale",
"ImageToHSB",
"ImageToReal",
"ImageToReal32",
"ImageToRGB",
"Import",
"ImportPictures",
"ImportStyleDefinitions",
"Indent",
"InsertBibAndNotes",
"InsertBibNote",
"InsertBibReference",
"InsertClipPlane",
"InsertMatchingBraces",
"InsertMatchingBrackets",
"InsertMatchingParentheses",
"InsertNewGraphic",
"InsertObject",
"InsertRawExpression",
"InsertSoftReturn",
"InsertSplitBreak",
"LicAuthFailureDialog",
"Linebreak",
"MacintoshOpenDeskAccessory",
"MakeSelectionNotSpan",
"MakeSelectionSpan",
"MenuListBoxFormFormatTypes",
"MenuListCellEvaluators",
"MenuListCellTags",
"MenuListCommonDefaultFormatTypesInput",
"MenuListCommonDefaultFormatTypesInputInline",
"MenuListCommonDefaultFormatTypesOutput",
"MenuListCommonDefaultFormatTypesOutputInline",
"MenuListCommonDefaultFormatTypesText",
"MenuListCommonDefaultFormatTypesTextInline",
"MenuListConvertFormatTypes",
"MenuListDisplayAsFormatTypes",
"MenuListExportClipboardSpecial",
"MenuListFonts",
"MenuListFontSubstitutions",
"MenuListGlobalEvaluators",
"MenuListHelpWindows",
"MenuListNotebookEvaluators",
"MenuListNotebooksMenu",
"MenuListPackageWindows",
"MenuListPalettesMenu",
"MenuListPaletteWindows",
"MenuListPlayerWindows",
"MenuListPlugInCommands",
"MenuListPrintingStyleEnvironments",
"MenuListQuitEvaluators",
"MenuListRelatedFilesMenu",
"MenuListSaveClipboardSpecial",
"MenuListScreenStyleEnvironments",
"MenuListStartEvaluators",
"MenuListStyleDefinitions",
"MenuListStyles",
"MenuListStylesheetWindows",
"MenuListTextWindows",
"MenuListWindows",
"ModifyBoxFormFormatTypes",
"ModifyDefaultFontProperties",
"ModifyEvaluatorNames",
"ModifyFontSubstitutions",
"ModifyNotebooksMenu",
"ModifyRelatedFiles",
"MoveBackward",
"MoveExpressionEnd",
"MoveForward",
"MoveLineBeginning",
"MoveLineEnd",
"MoveNext",
"MoveNextCell",
"MoveNextExpression",
"MoveNextLine",
"MoveNextPlaceHolder",
"MoveNextWord",
"MovePrevious",
"MovePreviousExpression",
"MovePreviousLine",
"MovePreviousPlaceHolder",
"MovePreviousWord",
"MoveToBack",
"MoveToFront",
"New",
"NewCDFNotebook",
"NewColumn",
"NewPackage",
"NewRow",
"NewText",
"NextFunctionTemplate",
"NotebookMail",
"NotebookMailSelection",
"NotebookOneNote",
"NotebookOneNoteSelection",
"NotebookStatisticsDialog",
"NudgeDown",
"NudgeLeft",
"NudgeRight",
"NudgeUp",
"Open",
"OpenCloseGroup",
"OpenFromNotebooksMenu",
"OpenFromNotebooksMenuEmpty",
"OpenFromPalettesMenu",
"OpenFromRelatedFilesMenu",
"OpenHelpLink",
"OpenSelection",
"OpenSelectionParents",
"OpenURL",
"OptionsDialog",
"Otherscript",
"PasswordDialog",
"Paste",
"PasteApply",
"PasteApplyNoAutoScroll",
"PasteDiscard",
"PasteDiscardNoAutoScroll",
"PasteSpecial",
"Placeholder",
"PlainFont",
"PreferencesDialog",
"PreviousFunctionTemplate",
"PrintDialog",
"PrintOptionsDialog",
"PrintSelectionDialog",
"PublishToPlayer",
"Radical",
"RebuildBibAndNotes",
"RebuildHelpIndex",
"RecordSoundDialog",
"RefreshDynamicObjects",
"RelatedFilesMenu",
"RemoveAdjustments",
"RemoveFromEvaluationQueue",
"Replace",
"ReplaceAll",
"ReplaceFind",
"ReplaceParent",
"ResetDefaultsText",
"ReverseQuote",
"Revert",
"RunColorDialog",
"RunEdgeColorDialog",
"RunFaceColorDialog",
"Save",
"SaveRename",
"SaveRenameSpecial",
"ScrollLineDown",
"ScrollLineUp",
"ScrollNotebookEnd",
"ScrollNotebookStart",
"ScrollPageBottom",
"ScrollPageDown",
"ScrollPageFirst",
"ScrollPageLast",
"ScrollPageNext",
"ScrollPagePrevious",
"ScrollPageTop",
"ScrollPageUp",
"SelectAll",
"SelectGeneratedCells",
"SelectionAnimate",
"SelectionBrace",
"SelectionBracket",
"SelectionCloseAllGroups",
"SelectionCloseUnselectedCells",
"SelectionConvert",
"SelectionConvertB",
"SelectionDisplayAs",
"SelectionDisplayAsB",
"SelectionHelpDialog",
"SelectionOpenAllGroups",
"SelectionParenthesize",
"SelectionSaveSpecial",
"SelectionScroll",
"SelectionSetFind",
"SelectionSpeak",
"SelectionSpeakSummary",
"SelectionUnbracket",
"SelectLineBeginning",
"SelectLineEnd",
"SelectNext",
"SelectNextExpression",
"SelectNextLine",
"SelectNextWord",
"SelectNotebookWindow",
"SelectPrevious",
"SelectPreviousExpression",
"SelectPreviousLine",
"SelectPreviousWord",
"ServerText",
"SetCitationStyle",
"SetDefaultGraphic",
"ShortNameDelimiter",
"SimilarCellBelow",
"SoundPlay",
"SpellCheckerDialog",
"StackWindows",
"Style",
"StyleDefinitionsOther",
"StyleOther",
"Subscript",
"SubsessionEvaluateCells",
"Superscript",
"SystemPrintOptionsDialog",
"Tab",
"TemplateSelection",
"TestEvaluateNotebook",
"TileWindowsTall",
"TileWindowsWide",
"ToggleAlignmentGuides",
"ToggleDebugFlag",
"ToggleDynamicUpdating",
"ToggleGrayBox",
"ToggleOptionListElement",
"ToggleShowExpression",
"ToggleTestingFlag",
"TrustNotebook",
"Undo",
"Ungroup",
"WelcomeDialog",
"WindowMiniaturize",
"XInfoDialog",
"ZoomWindow",
"$CellContext`inputnb$$",
"$CellContext`sourceNotebook$$"
};

(***********************************************)
(*******    general utilities           ********)

$FONTSIZE=13;

cellCreator[guts__]:=Module[{},
   CellPrint[Cell[{guts}[[1]], "DisplayFormula", FontSize -> $FONTSIZE]];
   If[Length[{guts}]>1,CellPrint[Cell[{guts}[[2]], "DisplayFormula", FontSize -> $FONTSIZE]]];
   If[Length[{guts}]>2,CellPrint[Cell[{guts}[[3]], "DisplayFormula", FontSize -> $FONTSIZE]]];
   If[Length[{guts}]>3,CellPrint[Cell[{guts}[[4]], "DisplayFormula", FontSize -> $FONTSIZE]]];
   If[Length[{guts}]>4,CellPrint[Cell[{guts}[[5]], "DisplayFormula", FontSize -> $FONTSIZE]]];
   If[Length[{guts}]>5,CellPrint[Cell[{guts}[[6]], "DisplayFormula", FontSize -> $FONTSIZE]]];
   If[Length[{guts}]>6,CellPrint[Cell[{guts}[[7]], "DisplayFormula", FontSize -> $FONTSIZE]]];
   If[Length[{guts}]>7,CellPrint[Cell[{guts}[[8]], "DisplayFormula", FontSize -> $FONTSIZE]]];
   If[Length[{guts}]>8,CellPrint[Cell[{guts}[[9]], "DisplayFormula", FontSize -> $FONTSIZE]]];
   If[Length[{guts}]>9,CellPrint[Cell[{guts}[[10]], "DisplayFormula", FontSize -> $FONTSIZE]]];
   If[Length[{guts}]>10,CellPrint[Cell[{guts}[[11]], "DisplayFormula", FontSize -> $FONTSIZE]]];
   If[Length[{guts}]>11,CellPrint[Cell[{guts}[[12]], "DisplayFormula", FontSize -> $FONTSIZE]]];
   SelectionMove[EvaluationCell[], All, EvaluationCell];
   NotebookDelete[];
   SelectionMove[EvaluationNotebook[], Next, CellContents]];

displayFormula[string_]:= (
  CellPrint[
   Cell[BoxData[StyleBox[string, FontWeight->"Normal"]], "DisplayFormula", FontSize -> $FONTSIZE]
   ];
  );
(*******    general utilities           ********)
(***********************************************)


modifierzGuts1:=Module[{},Cell[BoxData[
   RowBox[{"Grid", "[",
      RowBox[{
         RowBox[{
            RowBox[{
               RowBox[{"{",
                  RowBox[{
                     RowBox[{"ToExpression", "[",

                RowBox[{"\"\<\\\\[\>\"", "<>", "#", "<>",
                  "\"\<]\>\""}], "]"}], ",",
                     RowBox[{"Dynamic", "[",
                        RowBox[{"CurrentValue", "[", "#", "]"}],
                "]"}]}], "}"}], "&"}], "/@",
            RowBox[{"{",

          RowBox[{"\"\<AltKey\>\"", ",", "\"\<CommandKey\>\"", ",",
            "\"\<ControlKey\>\"", ",",
                  "\"\<OptionKey\>\"", ",", "\"\<ShiftKey\>\""}],
          "}"}]}], ",",
         RowBox[{"Frame", "\[Rule]", "All"}], ",",
         RowBox[{"ItemStyle", "\[Rule]",
            RowBox[{"{",
               RowBox[{"{",
                  RowBox[{"Large", ",", "Automatic"}], "}"}],
          "}"}]}]}], "]"}]], "Input",
  CellFrame -> {{True, True}, {False, True}},
  TaggingRules -> {"LastCursorPosition" -> False},
  CellFrameLabels -> {{None, None}, {None,
    "input (mathematica code)"}},
  CellChangeTimes -> {{3.765429795432271*^9,
    3.765430020786477*^9}, {3.765430678913804*^9,
       3.765430691256383*^9},
   3.76543098701232*^9, {3.7679384264798613`*^9,
    3.767938452714913*^9}},
  Background -> GrayLevel[0.95],
  CellLabel -> "In[12]:="]];
modifierzGuts2:=Module[{},Cell[BoxData[
 TagBox[GridBox[{
    {"\[AltKey]",
     DynamicBox[ToBoxes[
       CurrentValue["AltKey"], StandardForm],
      ImageSizeCache->{65., {0., 18.}}]},
    {"\[CommandKey]",
     DynamicBox[ToBoxes[
       CurrentValue["CommandKey"], StandardForm],
      ImageSizeCache->{65., {0., 18.}}]},
    {"\[ControlKey]",
     DynamicBox[ToBoxes[
       CurrentValue["ControlKey"], StandardForm],
      ImageSizeCache->{81., {0., 20.}}]},
    {"\[OptionKey]",
     DynamicBox[ToBoxes[
       CurrentValue["OptionKey"], StandardForm],
      ImageSizeCache->{65., {0., 18.}}]},
    {"\[ShiftKey]",
     DynamicBox[ToBoxes[
       CurrentValue["ShiftKey"], StandardForm],
      ImageSizeCache->{65., {0., 18.}}]}
   },
   AutoDelete->False,
   GridBoxFrame->{"Columns" -> {{True}}, "Rows" -> {{True}}},
   GridBoxItemSize->{"Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}},
   GridBoxItemStyle->{"Columns" -> {Large, Automatic}}],
  "Grid"]], "Output",
 CellFrame->{{True, True}, {True, False}},
 CellFrameLabels->{{None, None}, {"output", None}},
 CellChangeTimes->{{3.7679384265276823`*^9, 3.7679384539989843`*^9}},
 Background->GrayLevel[0.85],
 CellLabel->"Out[12]="]];
modifierz:= Module[{},CellPrint[modifierzGuts1];CellPrint[modifierzGuts2]];


windowSwitcherMouseGuts1:=Module[{},Cell[BoxData[
 RowBox[{"DynamicModule", "[",
  RowBox[{
   RowBox[{"{", "font", "}"}], ",",
   RowBox[{"Row", "[",
    RowBox[{"{",
     RowBox[{
      RowBox[{"PopupMenu", "[",
       RowBox[{
        RowBox[{"Dynamic", "[", "font", "]"}], ",",
        RowBox[{"FE`Evaluate", "[",
         RowBox[{"FEPrivate`GetPopupList", "[", "\"\<MenuListWindows\>\"", "]"}], "]"}]}], "]"}], ",",
      RowBox[{"Spacer", "[", "20", "]"}], ",",
      RowBox[{"Dynamic", "[",
       RowBox[{"SetSelectedNotebook", "[", "font", " ", "]"}], "]"}]}], "}"}], "]"}]}], "]"}]], "Input",
 CellFrame->{{True, True}, {False, True}},
 TaggingRules->{"LastCursorPosition" -> False},
 CellFrameLabels->{{None, None}, {None, "input (mathematica code)"}},
 CellChangeTimes->{3.767869704382765*^9, {3.767963165882497*^9, 3.767963171561761*^9}},
 Background->GrayLevel[0.95],
 CellLabel->"In[9]:="]];
windowSwitcherMouseGuts2:=Module[{},Cell[BoxData[
 DynamicModuleBox[{$CellContext`font$$ = All},
  TemplateBox[{PopupMenuBox[
     Dynamic[$CellContext`font$$], {All -> "All", NotebookObject[
        FrontEndObject[
         LinkObject["xtyjy_shm", 3, 1]], 1] -> "\"Messages\"", Delimiter, NotebookObject[
        FrontEndObject[
         LinkObject["xtyjy_shm", 3, 1]], 15] -> "\"Untitled-1\"", NotebookObject[
        FrontEndObject[
         LinkObject["xtyjy_shm", 3, 1]], 19] -> "\"Untitled-2\""}],TemplateBox[{20}, "Spacer1"],DynamicBox[
     ToBoxes[
      SetSelectedNotebook[$CellContext`font$$], StandardForm]]},
   "RowDefault"],
  DynamicModuleValues:>{}]], "Output",
 CellFrame->{{True, True}, {True, False}},
 CellFrameLabels->{{None, None}, {"output", None}},
 CellChangeTimes->{{3.767963165925331*^9, 3.767963174569312*^9}},
 Background->GrayLevel[0.85],
 CellLabel->"Out[9]="]];
windowSwitcherMouse:=Module[{},CellPrint[windowSwitcherMouseGuts1];CellPrint[windowSwitcherMouseGuts2]];




End[];
EndPackage[];