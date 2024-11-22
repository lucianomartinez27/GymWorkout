adding
addExercise: anExercise

	(exercises anySatisfy: [ :each | each isNamed: anExercise name ])
		ifTrue: [
			self error:
				'There is already an exercise with that name in this routine' ].
	exercises add: anExercise