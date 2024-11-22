rendering
renderInputNamed: aLabel callback: aBlock on: aCanvas

	aCanvas div
		class: 'field';
		with: [
			aCanvas div
				class: 'control';
				with: [
					aCanvas textInput
						class: 'input';
						placeholder: aLabel;
						callback: aBlock ] ]