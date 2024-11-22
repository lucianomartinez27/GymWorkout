rendering
renderCreateExerciseFormForWeek: aWeekNumber day: aDayNumber on: aCanvas

	| name reps |
	reps := OrderedCollection new.
	aCanvas form with: [
		aCanvas div
			class: 'field is-vertical my-5';
			with: [
				aCanvas label
					class: 'label';
					with: ('Añadir ejercicio para la semana {1} / día {2}' format: {
									 aWeekNumber.
									 aDayNumber }).
				aCanvas div
					class: 'field-body';
					with: [
						self
							renderInputNamed: 'Nombre'
							callback: [ :value | name := value ]
							on: aCanvas.
						1 to: 3 do: [ :repNumber |
								self
									renderInputNamed: 'Rep ' , repNumber printString
									callback: [ :value | reps add: value asNumber ]
									on: aCanvas ].
						aCanvas button
							class: 'button is-primary';
							callback: [
								system
									add: (Exercise named: name reps: reps)
									toWeek: aWeekNumber
									day: aDayNumber ];
							with: 'Guardar' ] ] ].
	aCanvas horizontalRule