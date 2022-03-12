		MenuItem["Parallel Kernel Configuration...", FrontEndExecute[{
			FrontEnd`SetOptions[FrontEnd`$FrontEnd, FrontEnd`PreferencesSettings -> {"Page" -> "Parallel"}],
			FrontEnd`FrontEndToken["PreferencesDialog"]}]];(**)