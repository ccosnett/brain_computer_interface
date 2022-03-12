			MenuItem["Ruler", ToggleOptionListElement[{"WindowToolbars", "RulerBar"}], Scope->NotebookDefault];(**)
			MenuItem["Formatting", ToggleOptionListElement[{"WindowToolbars", "EditBar"}], Scope->NotebookDefault];(**)
			MenuItem["Templating", KernelExecute[NotebookTemplating`CreateTemplateNotebook[InputNotebook[]]], MenuEvaluator -> "System"];(**)
			MenuItem["Testing", KernelExecute[Block[{$ContextPath}, Needs["MUnit`"]; MUnit`addDockedCellConvertNotebook[]]], MenuEvaluator -> "System"];(***)
