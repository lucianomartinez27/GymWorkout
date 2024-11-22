tests
test06

	| workoutDay squats benchPress |
	squats := Exercise named: 'Squats' reps: #( 8 8 6 ).
	benchPress := Exercise named: 'Bench press' reps: #( 8 8 6 ).
	workoutDay := GymWorkoutDay withExercises: {
			              squats.
			              benchPress }.
	workoutDay removeExercise: benchPress.
	self deny: (workoutDay includesExercise: benchPress)