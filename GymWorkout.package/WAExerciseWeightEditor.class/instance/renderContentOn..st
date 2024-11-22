initialization
renderContentOn: aCanvas

	aCanvas form: [
		aCanvas div
			class: 'field has-addons';
			with: [
				aCanvas div
					class: 'control';
					with: [
						aCanvas numberInput
							class: 'input is-primary is-small';
							callback: [ :value |
								exerciseLog setRep: repNumber withWeight: value asNumber * kg ];
							value: (exerciseLog weightForRep: repNumber) amount ].
				aCanvas div
					class: 'control';
					with: [
						aCanvas submitButton
							class: 'button is-small is-info';
							callback: [ self answer ];
							with: 'Guardar' ] ] ]