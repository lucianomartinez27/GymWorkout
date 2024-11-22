creation
createLogs

	^ exercises collect: [ :anExercise | ExerciseLog for: anExercise ]