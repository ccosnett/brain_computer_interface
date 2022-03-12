SetOptions[$DefaultFrontEnd, 

EvaluatorStartup->ToExpression[FEPrivate`FrontEndResourceString["GetFEKernelInit"]],

CellLabelStyle->{"CellLabel", "CellLabelExpired"},

ContextMenu->FEPrivate`FrontEndResource["ContextMenus", "Text"],

ComponentwiseContextMenu-> {
	"GraphicsBox" -> FEPrivate`FrontEndResource["ContextMenus", "GraphicsBox"],
	"Graphics3DBox" -> FEPrivate`FrontEndResource["ContextMenus", "Graphics3DBox"],
	"LocatorPaneBox" -> FEPrivate`FrontEndResource["ContextMenus", "LocatorPaneBox"],
	"CellGroup" -> FEPrivate`FrontEndResource["ContextMenus", "CellGroup"],
	"CellBracket" -> FEPrivate`FrontEndResource["ContextMenus", "CellBracket"],
	"CellRange" -> FEPrivate`FrontEndResource["ContextMenus", "CellRange"],
	"CellInsertionPoint" -> FEPrivate`FrontEndResource["ContextMenus", "CellInsertionPoint"],
  	"MisspelledText" -> FEPrivate`FrontEndResource["ContextMenus", "MisspelledText"]
},

Dictionaries->{

	"af-ZA" -> "af_ZA",
	"an-ES" -> "an_ES",
	"be-BY" -> "be_BY",
	"br-FR" -> "br_FR",
	"bs-BA" -> "bs_BA",
	"ca-valencia" -> "ca-valencia",
	"da-DK" -> "da_DK",
	"de-DE" -> "de_DE",
	"el-GR" -> "el_GR",
	"en-US" -> "en_US",
	"es-ANY" -> "es_ANY",
	"et-EE" -> "et_EE",
	"he-IL" -> "he_IL",
	"hr-HR" -> "hr_HR",
	"hu-HU" -> "hu_HU",
	"kmr-Latn" -> "kmr_Latn",
	"ko-KR" -> "ko-KR",
	"lo-LA" -> "lo_LA",
	"lv-LV" -> "lv_LV",
	"ne-NP" -> "ne_NP",
	"nl-NL" -> "nl_NL",
	"pl-PL" -> "pl_PL",
	"pt-BR" -> "pt_BR",
	"pt-PT" -> "pt_PT",
	"ro-RO" -> "ro_RO",
	"ru-RU" -> "ru_RU",
	"sk-SK" -> "sk_SK",
	"sl-SI" -> "sl_SI",
	"sr-Latn" -> "sr-Latn",
	"sv-FI" -> "sv_FI",
	"sv-SE" -> "sv_SE",
	"sw-TZ" -> "sw_TZ",
	"te-IN" -> "te_IN",
	"th-TH" -> "th_TH",
	"uk-UA" -> "uk_UA",

	(* defaults if we only have a language code *)
	"af" -> "af_ZA",
	"an" -> "an_ES",
	"ar" -> "ar",
	"be" -> "be_BY",
	"br" -> "br_FR",
	"bs" -> "bs_BA",
	"ca" -> "ca",
	"da" -> "da_DK",
	"de" -> "de_DE",
	"el" -> "el_GR",
	"en" -> "en_US",
	"es" -> "es_ANY",
	"et" -> "et_EE",
	"fr" -> "fr",
	"he" -> "he_IL",
	"hr" -> "hr_HR",
	"hu" -> "hu_HU",
	"is" -> "is",
	"kmr" -> "kmr_Latn",
	"ko" -> "ko-KR",
	"lo" -> "lo_LA",
	"lt" -> "lt",
	"lv" -> "lv_LV",
	"ne" -> "ne_NP",
	"nl" -> "nl_NL",
	"pl" -> "pl_PL",
	"pt" -> "pt_PT",
	"ro" -> "ro_RO",
	"ru" -> "ru_RU",
	"sk" -> "sk_SK",
	"sl" -> "sl_SI",
	"sr" -> "sr",
	"sv" -> "sv_SE",
	"sw" -> "sw_TZ",
	"te" -> "te_IN",
	"th" -> "th_TH",
	"uk" -> "uk_UA"
},

ImportAutoReplacements -> {
	"->" -> "\[Rule]",
	":>" -> "\[RuleDelayed]",
	"<=" -> "\[LessEqual]",
	">=" -> "\[GreaterEqual]",
	"!=" -> "\[NotEqual]",
	"==" -> "\[Equal]",
	"<->" -> "\[TwoWayRule]"
},

ExportAutoReplacements -> {
	"\[Rule]" -> "->",
	"\[RuleDelayed]" -> ":>",
	"\[TwoWayRule]" -> "<->",
	"\[LessEqual]" -> "<=",
	"\[GreaterEqual]" -> ">=",
	"\[NotEqual]" -> "!=",
	"\[Equal]" -> "==",
	"\[LongEqual]" -> "==",
	"\[LineSeparator]" -> "\n",
	"\[ParagraphSeparator]" -> "\n",
	"\[Hyphen]" -> "-",
	"\[LeftDoubleBracket]" -> "[[",
	"\[RightDoubleBracket]" -> "]]",
	"\[LeftSkeleton]" -> "<<",
	"\[RightSkeleton]" -> ">>",
	"\[InvisibleSpace]" -> " ",
	"\[VeryThinSpace]" -> " ",
	"\[Times]" -> "*",
	"\[Divide]" -> "/",
	"\[ExponentialE]" -> "E",
	"\[ImaginaryI]" -> "I",
	"\[NoBreak]" -> "",
	"\[OpenCurlyQuote]" -> "'",
	"\[CloseCurlyQuote]" -> "'",
	"\[OpenCurlyDoubleQuote]" -> "\"",
	"\[CloseCurlyDoubleQuote]" -> "\"",
	"\[LeftAssociation]" -> "<|",
	"\[RightAssociation]" -> "|>"
},

InputAliases -> {
	"intt" -> RowBox[{"\[Integral]", RowBox[{"\[SelectionPlaceholder]", RowBox[{"\[DifferentialD]", "\[Placeholder]"}]}]}],
	"dintt" -> RowBox[{SubsuperscriptBox["\[Integral]", "\[SelectionPlaceholder]", "\[Placeholder]"], RowBox[{"\[Placeholder]", RowBox[{"\[DifferentialD]", "\[Placeholder]"}]}]}],
	"rintt" -> RowBox[{UnderscriptBox["\[Integral]", RowBox[{"\[SelectionPlaceholder]", "\[Element]", "\[Placeholder]"}]], "\[Placeholder]" }],
	"sumt" -> RowBox[{UnderoverscriptBox["\[Sum]", RowBox[{"\[SelectionPlaceholder]", "=", "\[Placeholder]"}], "\[Placeholder]"], "\[Placeholder]"}],
	"prodt" -> RowBox[{UnderoverscriptBox["\[Product]", RowBox[{"\[SelectionPlaceholder]", "=", "\[Placeholder]"}], "\[Placeholder]"], "\[Placeholder]"}],
	"dt" -> RowBox[{SubscriptBox["\[PartialD]", "\[Placeholder]"], " ", "\[SelectionPlaceholder]"}],
	"cbrt" -> RadicalBox["\[SelectionPlaceholder]", "3", SurdForm->True, MultilineFunction->None],
	"surd" -> RadicalBox["\[SelectionPlaceholder]", "\[Placeholder]", SurdForm->True, MultilineFunction->None],
	"ket" -> TemplateBox[{"\[SelectionPlaceholder]"},"Ket"],
	"bra" -> TemplateBox[{"\[SelectionPlaceholder]"},"Bra"],
	"braket" -> TemplateBox[{"\[SelectionPlaceholder]","\[Placeholder]"},"BraKet"],
	"delay" -> TemplateBox[ {"\[SelectionPlaceholder]"}, "SystemsModelDelay"],
	"grad" -> RowBox[{SubscriptBox["\[Del]","\[SelectionPlaceholder]"],"\[Placeholder]"}],
	"del." -> RowBox[{SubscriptBox["\[Del]","\[SelectionPlaceholder]"],".","\[Placeholder]"}],
	"delx" -> RowBox[{SubscriptBox["\[Del]","\[SelectionPlaceholder]"],"\[Cross]","\[Placeholder]"}],
	"del2" -> RowBox[{SubsuperscriptBox["\[Del]","\[SelectionPlaceholder]", 2],"\[Placeholder]"}],
	"kd" -> TemplateBox[{"\[SelectionPlaceholder]"}, "KroneckerDeltaSeq"],
	"algs" -> TemplateBox[{},"Algebraics"],
	"bools" -> TemplateBox[{},"Booleans"],
	"comps" -> TemplateBox[{},"Complexes"],
	"ints" -> TemplateBox[{},"Integers"],
	"pris" -> TemplateBox[{},"Primes"],
	"rats" -> TemplateBox[{},"Rationals"],
	"reals" -> TemplateBox[{},"Reals"],
	"dlim" -> RowBox[{UnderscriptBox["\[Limit]", RowBox[{"\[SelectionPlaceholder]", UnderscriptBox["\[Rule]", TemplateBox[{}, "Integers"]], "\[Infinity]"}]], "\[Placeholder]"}],
	"dMlim" -> RowBox[{UnderscriptBox["\[MaxLimit]", RowBox[{"\[SelectionPlaceholder]", UnderscriptBox["\[Rule]", TemplateBox[{}, "Integers"]], "\[Infinity]"}]], "\[Placeholder]"}],
	"dmlim" -> RowBox[{UnderscriptBox["\[MinLimit]", RowBox[{"\[SelectionPlaceholder]", UnderscriptBox["\[Rule]", TemplateBox[{}, "Integers"]], "\[Infinity]"}]], "\[Placeholder]"}]
},

LimitsPositioningTokens -> {"\[Sum]", "\[Product]", "\[Intersection]",
   "\[Union]", "\[UnionPlus]", "\[Wedge]", "\[Vee]", "\[Limit]", "\[MaxLimit]", "\[MinLimit]",
   "lim", "max", "min", "\[CirclePlus]", "\[CircleMinus]", "\[CircleTimes]", "\[CircleDot]"},

EvaluatorNames->{"Local"->{"AutoStartOnLaunch" -> True}, "LinkSnooper"->{"AutoStartOnLaunch"->False, "MLOpenArguments"->"-LinkMode Launch -LinkName {oq}{iq}`javaw`{iq} -classpath {iq}`jlinkjar`{iq} com.wolfram.jlink.util.LinkSnooper -noinit -kernelname {iq}`wolframkernel`{iq}{oq}"}},

DefaultFontProperties->{"Times"->{"FontSerifed" -> True, "FontMonospaced" -> False}, 
"Helvetica"->{"FontSerifed" -> False, "FontMonospaced" -> False}, 
"Courier"->{"FontSerifed" -> True, "FontMonospaced" -> True}, 
"Symbol"->{"FontEncoding" -> "Symbol", "FontSerifed" -> True, "FontMonospaced" -> False},
"ZapfDingbats"->{"FontEncoding" -> "ZapfDingbats", "FontSerifed" -> True, "FontMonospaced" -> False}
},

BoxFormFormatTypes->{
StandardForm,
TraditionalForm
},

WindowPersistentStyles->{
WindowFrame,
WindowMargins,
WindowSize,
DockedCells,
Magnification
},

"HelpViewerSettings" -> {
"WindowSize" -> 
{860, FEPrivate`Min[FEPrivate`Part[FrontEnd`CurrentValue["ScreenArea"], 1, 2, 2] - 
  FEPrivate`Part[FrontEnd`CurrentValue["ScreenArea"], 1, 2, 1] - 40, 1000]}}

];

AddFileBrowserFilterPacket["Open", {
	Item[FEPrivate`FrontEndResource["CommonFrontEndInitDialogs", "AllFilesLabel"], FindOpenFilter,  "", "*"],
	Item[FEPrivate`FrontEndResource["CommonFrontEndInitDialogs", "WolframFilesLabel"], FEPrivate`FrontEndExecute[FrontEndToken["Open", {#, "Notebook"}]]&, "nb", {"*.nb","*.cdf","*.nbp","*.wl","*.wls","*.ma","*.m"}, OptionsNotebook->"ImportNotebook.nb"],
	Item[FEPrivate`FrontEndResource["CommonFrontEndInitDialogs", "PictureFilesLabel"], FindImportPicturesFilter,  "", PictureFilters],
	Item[FEPrivate`FrontEndResource["CommonFrontEndInitDialogs", "RichTextFormatLabel"], FEPrivate`FrontEndExecute[FrontEndToken["Open", {#, "RichText"}]]&, "rtf", "*.rtf", MacintoshFileTypes->{"RTF "}],
	Item[FEPrivate`FrontEndResource["CommonFrontEndInitDialogs", "TextFilesLabel"], FEPrivate`FrontEndExecute[FrontEndToken["Open", {#, "Text"}]]&, "txt", {"*.txt"}, MacintoshFileTypes->{"TEXT"}, OptionsNotebook->"ImportText.nb"]
}];

AddFileBrowserFilterPacket["Import", {
	Item[FEPrivate`FrontEndResource["CommonFrontEndInitDialogs", "AllFilesLabel"], FindImportFilter,  "", "*"],
	Item[FEPrivate`FrontEndResource["CommonFrontEndInitDialogs", "WolframFilesLabel"], FEPrivate`FrontEndExecute[FrontEndToken[#2, "Import", {#, "Notebook"}]]&, "nb", {"*.nb","*.cdf","*.nbp","*.wl","*.wls","*.ma","*.m"}, OptionsNotebook->"ImportNotebook.nb"],
	Item[FEPrivate`FrontEndResource["CommonFrontEndInitDialogs", "PictureFilesLabel"], FindImportPicturesFilter,  "", PictureFilters],
	Item[FEPrivate`FrontEndResource["CommonFrontEndInitDialogs", "RichTextFormatLabel"], FEPrivate`FrontEndExecute[FrontEndToken[#2, "Import", {#, "RichText"}]]&, "rtf", "*.rtf", MacintoshFileTypes->{"RTF "}],
	Item[FEPrivate`FrontEndResource["CommonFrontEndInitDialogs", "TextFilesLabel"], FEPrivate`FrontEndExecute[FrontEndToken["Import", {#, "Text"}]]&, "txt", {"*.txt"}, MacintoshFileTypes->{"TEXT"}, OptionsNotebook->"ImportText.nb"]
}];

AddFileBrowserFilterPacket["ImportPictures", {
	Item[FEPrivate`FrontEndResource["CommonFrontEndInitDialogs", "AllFilesLabel"], FindImportPicturesFilter,  "", "*"],
	Item[FEPrivate`FrontEndResource["CommonFrontEndInitDialogs", "EPSLabel"], FEPrivate`FrontEndExecute[FrontEndToken[#2, "ImportPictures", {#, "EPS"}]]&, "eps", {"*.eps"}],
	Item[FEPrivate`FrontEndResource["CommonFrontEndInitDialogs", "GIFLabel"], FEPrivate`FrontEndExecute[FrontEndToken[#2, "ImportPictures", {#, "GIF"}]]&, "gif", "*.gif", MacintoshFileTypes->{"GIFf"}, OptionsNotebook -> "ImportGIF.nb"],
	Item[FEPrivate`FrontEndResource["CommonFrontEndInitDialogs", "JPEGLabel"], NotebookWrite[#2, ToBoxes[Import[#, "JPEG"]]]&, "jpg", {"*.jpg", "*.jpeg"}, MenuEvaluator->Automatic, MacintoshFileTypes->{"JPEG"}, OptionsNotebook -> "ImportJPEG.nb"],
	Item[FEPrivate`FrontEndResource["CommonFrontEndInitDialogs", "PDFLabel"], FEPrivate`If[CurrentValue[{ConversionOptions, "ImportOptions", "PDF", "Editable"}] =!= False,
					FrontEnd`Private`ImportPDF[#2, #],
					FEPrivate`FrontEndExecute[FrontEndToken[#2, "ImportPictures", {#, "PDF"}]]
				]&,	"pdf", {"*.pdf"}, MacintoshFileTypes->{"PDF "}, OptionsNotebook -> "ImportPDF.nb"],
	Item[FEPrivate`FrontEndResource["CommonFrontEndInitDialogs", "PNGLabel"], FEPrivate`FrontEndExecute[FrontEndToken[#2, "ImportPictures", {#, "PNG"}]]&, "png", "*.png", MacintoshFileTypes->{"PNGf"}],
	Item[FEPrivate`FrontEndResource["CommonFrontEndInitDialogs", "TIFFLabel"], NotebookWrite[#2, ToBoxes[Import[#, "TIFF"]]]&, "tiff", {"*.tiff", "*.tif"}, MenuEvaluator->Automatic, MacintoshFileTypes->{"TIFF"}, OptionsNotebook -> "ImportTIFF.nb"],
	Item[FEPrivate`FrontEndResource["CommonFrontEndInitDialogs", "RawLabel"], NotebookWrite[#2, ToBoxes[Import[#, "Raw"]]]&, "raw", {"*.bay", "*.bmq", "*.cr2", "*.crw", "*.cs1", "*.dc2", "*.dcr", "*.dng", "*.erf", "*.fff", "*.hdr", "*.k25", "*.kdc", "*.mdc", "*.mos", "*.mrw", "*.nef", "*.orf", "*.pef", "*.pxn", "*.raf", "*.raw", "*.rdc", "*.sr2", "*.srf", "*.x3f", "*.arw", "*.3fr", "*.cine", "*.ia", "*.kc2", "*.mef", "*.nrw", "*.qtk", "*.rw2", "*.sti", "*.rwl"}, MenuEvaluator->Automatic]
}];

AddFileBrowserFilterPacket["Save", {
	Item[FEPrivate`FrontEndResource["CommonFrontEndInitDialogs", "NBLabel"], FEPrivate`FrontEndExecute[FrontEndToken[#2, "Save", {#, "Notebook"}]]&, "nb", "*.nb", MacintoshFileTypes->{"TEXT"}],
	Item[FEPrivate`FrontEndResource["CommonFrontEndInitDialogs", "CDFLabel"], FEPrivate`FrontEndExecute[FrontEndToken[#2, "Save", {#, "CDFNotebook"}]]&, "cdf", "*.cdf", MacintoshFileTypes->{"TEXT"}],
	Item[FEPrivate`FrontEndResource["CommonFrontEndInitDialogs", "WLLabel"], FEPrivate`FrontEndExecute[FrontEndToken[#2, "Save", {#, "Package"}]]&, "wl", "*.wl", MacintoshFileTypes->{"TEXT"}, OptionsNotebook -> "ExportPackage.nb"],
	Item[FEPrivate`FrontEndResource["CommonFrontEndInitDialogs", "MLabel"], FEPrivate`FrontEndExecute[FrontEndToken[#2, "Save", {#, "Package"}]]&, "m", "*.m", MacintoshFileTypes->{"TEXT"}, OptionsNotebook -> "ExportPackage.nb"],
	Item[FEPrivate`FrontEndResource["CommonFrontEndInitDialogs", "WLSLabel"], FEPrivate`FrontEndExecute[FrontEndToken[#2, "Save", {#, "Script"}]]&, "wls", "*.wls", MacintoshFileTypes->{"TEXT"}, OptionsNotebook -> "ExportPackage.nb"],
	Item[FEPrivate`FrontEndResource["CommonFrontEndInitDialogs", "PlainTextLabel"], FEPrivate`FrontEndExecute[FrontEndToken[#2, "Save", {#, "PlainText"}]]&, "txt", "*.txt", MacintoshFileTypes->{"TEXT"}],
	Item[FEPrivate`FrontEndResource["CommonFrontEndInitDialogs", "LatexLabel"],
		FrontEnd`SaveAs[#1, #2, "TeX"]&,
		"tex", "*.tex", MenuEvaluator->Automatic, MacintoshFileTypes->{"TEXT"}, OptionsNotebook -> "ExportTeX.nb"],
	Item[FEPrivate`FrontEndResource["CommonFrontEndInitDialogs", "PostScriptLabel"], FEPrivate`FrontEndExecute[NotebookPrint[#2, #1]]&, "ps", "*.ps", MacintoshFileTypes->{"TEXT"}, OptionsNotebook -> "ExportVectorFormat.nb"],
	Item[FEPrivate`FrontEndResource["CommonFrontEndInitDialogs", "PDFDocLabel"], FEPrivate`FrontEndExecute[NotebookPrint[#2, #1]]&, "pdf", "*.pdf", MacintoshFileTypes->{"PDF "}, OptionsNotebook -> "ExportPDF.nb"],
	Item[FEPrivate`FrontEndResource["CommonFrontEndInitDialogs", "RichTextFormatLabel"], FEPrivate`FrontEndExecute[FrontEndToken[#2, "Save", {#, "RTF"}]]&, "rtf", "*.rtf", MacintoshFileTypes->{"RTF "}],
	Item[FEPrivate`FrontEndResource["CommonFrontEndInitDialogs", "WebPageLabel"],
		FrontEnd`SaveAs[#1, #2, "XHTML"]&,
		"html", {"*.htm", "*.html"}, MenuEvaluator->Automatic, MacintoshFileTypes->{"TEXT"}, OptionsNotebook -> "ExportXHTML.nb"],
	Item[FEPrivate`FrontEndResource["CommonFrontEndInitDialogs", "XMLLabel"],
		FrontEnd`SaveAs[#1, #2, "XHTMLMathML"]&,
		"xml", {"*.xml", "*.htm", "*.html"}, MenuEvaluator->Automatic, MacintoshFileTypes->{"TEXT"}, OptionsNotebook -> "ExportXHTMLMathML.nb" ]
}];

AddFileBrowserFilterPacket["SaveSelection", {
	Item[FEPrivate`FrontEndResource["CommonFrontEndInitDialogs", "PDFLabel"], FEPrivate`FrontEndExecute[FrontEndToken[#2, "SelectionSaveSpecial", {#, "PDF"}]]&,
				"pdf", {"*.pdf"}, MacintoshFileTypes->{"PDF"}, OptionsNotebook -> "ExportPDF.nb"],
	Item[FEPrivate`FrontEndResource["CommonFrontEndInitDialogs", "WebPageLabel"], FrontEnd`SaveSelectionAs[#1, #2, "HTML"]&, "html", {"*.htm", "*.html"}, MenuEvaluator->Automatic, MacintoshFileTypes->{"TEXT"}, OptionsNotebook -> "ExportXHTML.nb"],
	Item[FEPrivate`FrontEndResource["CommonFrontEndInitDialogs", "HTMLLabel"], FrontEnd`SaveSelectionAs[#1, #2, "HTML", "FullDocument"->False]&, "html", {"*.htm", "*.html"}, MenuEvaluator->Automatic, MacintoshFileTypes->{"TEXT"}, OptionsNotebook -> "ExportXHTML.nb"],	
	Item[FEPrivate`FrontEndResource["CommonFrontEndInitDialogs", "BMPLabel"], FrontEnd`SaveSelectionAs[#1, #2, "BMP"]&, "bmp", "*.bmp", MenuEvaluator->Automatic, MacintoshFileTypes->{"BMP"}, OptionsNotebook -> "ExportBMP.nb"],
	Item[FEPrivate`FrontEndResource["CommonFrontEndInitDialogs", "EPSLabel"], FEPrivate`FrontEndExecute[FrontEndToken[#2, "SelectionSaveSpecial", {#, "EPS"}]]&,
				"eps", {"*.eps"}, MacintoshFileTypes->{"TEXT"}, OptionsNotebook -> "ExportEPS.nb"],
	Item[FEPrivate`FrontEndResource["CommonFrontEndInitDialogs", "GIFLabel"], FrontEnd`SaveSelectionAs[#1, #2, "GIF"]&, "gif", "*.gif", MenuEvaluator->Automatic, MacintoshFileTypes->{"GIFf"}],
	Item[FEPrivate`FrontEndResource["CommonFrontEndInitDialogs", "JPEGLabel"], FrontEnd`SaveSelectionAs[#1, #2, "JPEG"]&, "jpg", {"*.jpeg", "*.jpg"}, MenuEvaluator->Automatic, MacintoshFileTypes->{"JPEG"}, OptionsNotebook -> "ExportJPEG.nb"],
	Item[FEPrivate`FrontEndResource["CommonFrontEndInitDialogs", "PNGLabel"], FrontEnd`SaveSelectionAs[#1, #2, "PNG"]&, "png", "*.png", MenuEvaluator->Automatic, MacintoshFileTypes->{"PNGf"}],
	Item[FEPrivate`FrontEndResource["CommonFrontEndInitDialogs", "PXRLabel"], FrontEnd`SaveSelectionAs[#1, #2, "PXR"]&, "pxr", "*.pxr", MenuEvaluator->Automatic, MacintoshFileTypes->{"PXR"}],
	Item[FEPrivate`FrontEndResource["CommonFrontEndInitDialogs", "SVGLabel"], FEPrivate`FrontEndExecute[FrontEndToken[#2, "SelectionSaveSpecial", {#, "SVG"}]]&,
				"svg", {"*.svg"}, MacintoshFileTypes->{"TEXT"}, OptionsNotebook -> "ExportVectorFormat.nb"],
	Item[FEPrivate`FrontEndResource["CommonFrontEndInitDialogs", "TIFFLabel"], FrontEnd`SaveSelectionAs[#1, #2, "TIFF"]&, "tiff", {"*.tiff", "*.tif"}, MenuEvaluator->Automatic, MacintoshFileTypes->{"TIFF"}, OptionsNotebook -> "ExportTIFF.nb"]
}];

AddFileBrowserFilterPacket["InstallSource", {
	Item[FEPrivate`FrontEndResource["CommonFrontEndInitDialogs", "NBLabel"], 
		FEPrivate`Set[FEPrivate`Install`sourceFile, #]&, 
		"nb", "*.nb", MacintoshFileTypes->{"TEXT"}
	],
	Item[FEPrivate`FrontEndResource["CommonFrontEndInitDialogs", "WLLabel"], 
		FEPrivate`Set[FEPrivate`Install`sourceFile, #]&, 
		"wl", {"*wl","*.m"}, MacintoshFileTypes->{"TEXT"}
	],
	Item[FEPrivate`FrontEndResource["CommonFrontEndInitDialogs", "MXLabel"], 
		FEPrivate`Set[FEPrivate`Install`sourceFile, #]&, 
		"mx", "*.mx"
	],
	Item[FEPrivate`FrontEndResource["CommonFrontEndInitDialogs", "WSTPLabel"], 
		FEPrivate`Set[FEPrivate`Install`sourceFile, #]&, 
		"exe", "*.exe"
	]
}];

AddFileBrowserFilterPacket["InstallConfirmation", {
	Item[
		FEPrivate`FrontEndResource["CommonFrontEndInitDialogs", "NBLabel"], 
		FEPrivate`FrontEndExecute[
				FrontEnd`Install[FEPrivate`Install`sourceFile, #] 
		]&, 
		"nb", "*.nb", MacintoshFileTypes->{"TEXT"}
	],
	Item[
		FEPrivate`FrontEndResource["CommonFrontEndInitDialogs", "WLLabel"], 
		FEPrivate`FrontEndExecute[
				FrontEnd`Install[FEPrivate`Install`sourceFile, #]
		]&, 
		"wl", {"*.wl","*.m"}, MacintoshFileTypes->{"TEXT"}],
	Item[
		FEPrivate`FrontEndResource["CommonFrontEndInitDialogs", "MXLabel"], 
		FEPrivate`FrontEndExecute[
				FrontEnd`Install[FEPrivate`Install`sourceFile, #]
		]&, 
		"mx", "*.mx"],
	Item[FEPrivate`FrontEndResource["CommonFrontEndInitDialogs", "WSTPLabel"], 
		FEPrivate`FrontEndExecute[
				FrontEnd`Install[FEPrivate`Install`sourceFile, #]
		]&, 
		"exe", "*.exe"
	]
}];

