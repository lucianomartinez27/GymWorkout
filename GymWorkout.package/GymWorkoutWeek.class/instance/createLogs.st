creation
createLogs

	^ workoutDays collect: [ :workoutDay | GymWorkoutLog for: workoutDay ]