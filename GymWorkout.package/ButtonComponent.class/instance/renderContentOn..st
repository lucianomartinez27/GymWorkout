rendering
renderContentOn: aCanvas

	disabled
		ifTrue: [
			aCanvas button
				class: 'button ml-1';
				disabled: disabled;
				type: type;
				with: text ]
		ifFalse: [
			aCanvas anchor
				class: 'button ml-1';
				callback: callback;
				with: text ]