tests
test07

	| workoutDay squats benchPress squats2 |
	squats := Exercise named: 'Squats' reps: #( 8 8 6 ).
	benchPress := Exercise named: 'Bench press' reps: #( 8 8 6 ).
	workoutDay := squats2 := Exercise named: 'Squats' reps: #( 8 8 6 ).
	self
		should: [(GymWorkoutDay withExercises: {
					 squats.
					 benchPress.
					 squats2 })]
		raise: Error