MenuItem["Add Row",    KernelExecute[runShortcut["ctrl_return_.m"]], MenuEvaluator -> Automatic, Method -> "Queued",  MenuKey["Return", Modifiers->{"Control"}]];(**)
MenuItem["Add Column", KernelExecute[runShortcut["cmd_alt_r_.m"]],   MenuEvaluator -> Automatic, Method -> "Queued", MenuKey["r", Modifiers->{"Command","Alt"}]];(**)