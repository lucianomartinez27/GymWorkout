tests - handy utils
workoutWeek

	| squats benchPress |
	squats := Exercise named: 'Squats' reps: #( 8 8 6 ).
	benchPress := Exercise named: 'Bench press' reps: #( 8 8 6 ).
	^ GymWorkoutWeek withDays: { (GymWorkoutDay withExercises: {
				   squats.
				   benchPress }) } asOrderedCollection