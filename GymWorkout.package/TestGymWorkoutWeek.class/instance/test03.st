tests
test03

	| workoutWeek squats benchPress |
	squats := Exercise named: 'Squats' reps: #( 8 8 6 ).
	benchPress := Exercise named: 'Bench press' reps: #( 8 8 6 ).
	workoutWeek := GymWorkoutWeek withDays: self workoutDays.
	6 timesRepeat: [
		workoutWeek addDay: (GymWorkoutDay withExercises: {
					 squats.
					 benchPress }) ].
	self
		should: [
			workoutWeek addDay: (GymWorkoutDay withExercises: {
						 squats.
						 benchPress }) ]
		raise: Error