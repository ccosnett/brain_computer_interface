MenuItem["Internet && Mail Settings...", FrontEndExecute[{
			FrontEnd`SetOptions[FrontEnd`$FrontEnd, FrontEnd`PreferencesSettings -> {"Page" -> "InternetConnectivity"}],
			FrontEnd`FrontEndToken["PreferencesDialog"]}]];(**)