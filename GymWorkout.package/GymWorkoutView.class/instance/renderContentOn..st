rendering
renderContentOn: aCanvas

	aCanvas script
		type: 'module';
		with: 'import * as Turbo from '''
			, (WATurboFileLibrary / #turboes2017esmJs) greaseString
			, ''';Turbo.setFormMode("off");'.

	aCanvas anchor
		url: '/workout';
		with: [
			aCanvas heading
				class: 'title has-text-centered my-5';
				with: 'Tus Ejercicios' ].
	system workoutLogs withIndexDo: [ :aWorkoutLog :index |
		aCanvas div
			class: 'box container is-widescreen is-max-widescreen mt-5';
			with: [
				aCanvas heading
					level: 2;
					class: 'title mb-2';
					with: 'Semana ' , index printString.
				self exercisesFor: aWorkoutLog weekNumber: index on: aCanvas ] ]