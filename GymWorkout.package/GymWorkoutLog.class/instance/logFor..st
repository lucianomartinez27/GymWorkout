accessing
logFor: anExercise

	^ exercisesLog detect: [ :log | log isFor: anExercise ]