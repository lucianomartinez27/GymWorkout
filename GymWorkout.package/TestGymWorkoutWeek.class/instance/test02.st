tests
test02

	| workoutWeek squats benchPress |
	squats := Exercise named: 'Squats' reps: #( 8 8 6 ).
	benchPress := Exercise named: 'Bench press' reps: #( 8 8 6 ).
	workoutWeek := GymWorkoutWeek withDays: self workoutDays.
	workoutWeek addDay: (GymWorkoutDay withExercises: {
				 squats.
				 benchPress }).
	self
		assert: workoutWeek numberOfDays
		equals: self workoutDays size + 1