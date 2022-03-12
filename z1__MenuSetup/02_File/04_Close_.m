		AlternateItems[{
			MenuItem["Close", KernelExecute[runShortcut["cmd_w_.m"]], MenuEvaluator -> Automatic, Method -> "Queued", MenuKey["w", Modifiers->{"Command"}]],
			MenuItem["Close All", KernelExecute[runShortcut["cmd_alt_w_.m"]], MenuEvaluator -> Automatic, Method -> "Queued", MenuKey["w", Modifiers->{"Command","Option"}]]
		}];(**)

