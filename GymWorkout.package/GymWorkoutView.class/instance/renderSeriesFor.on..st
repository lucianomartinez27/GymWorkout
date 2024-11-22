rendering
renderSeriesFor: anExerciseLog on: aCanvas

	anExerciseLog exercise reps withIndexDo: [ :rep :repNumber |
		| exerciseLogComponent |
		exerciseLogComponent := ExerciseLogItemComponent
			                        on: anExerciseLog
			                        forRep: repNumber.
		exerciseLogComponent addDecoration: WATurboFrame new.
		logs add: exerciseLogComponent.
		aCanvas tableData with: [
			aCanvas div
				class: 'columns';
				with: [
					| repsString |
					aCanvas div
						class: 'column';
						with: [ aCanvas render: exerciseLogComponent ].
					repsString := '{1} reps' format:
						              { (anExerciseLog numberOfRepsInSerie: repNumber)
							              printString }.
					aCanvas paragraph
						class: 'column';
						with: repsString ] ] ]