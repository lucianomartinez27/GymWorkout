rendering
exercisesFor: aWorkoutLog weekNumber: aWeekNumber on: aCanvas

	aWorkoutLog logs withIndexDo: [ :aDayLog :dayNumber |
		aCanvas table
			class: 'table is-bordered is-narrow mx-auto is-fullwidth';
			with: [
				aCanvas tableRow: [
						aCanvas tableHeading: 'Ejercicio día: ' , dayNumber printString.
						1 to: 3 do: [ :index |
							aCanvas tableHeading with: 'Serie ' , index printString ] ].

				aCanvas tableBody: [
						aDayLog logs do: [ :anExerciseLog |
								aCanvas tableRow: [
										aCanvas tableData: anExerciseLog exerciseName.
										self renderSeriesFor: anExerciseLog on: aCanvas ] ] ] ].
		self
			renderCreateExerciseFormForWeek: aWeekNumber
			day: dayNumber
			on: aCanvas ]