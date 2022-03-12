MenuItem["Enter Activation Key...", KernelExecute[SetOptions[
		    FrontEnd`DialogOpen["ActivationDialog.nb"], TaggingRules -> {
		      "ActivationState" -> "Online", "ErrorMessage" -> None, "Unsecured" -> False, "Reactivate" -> True}]], MenuEvaluator -> "System"];(**)