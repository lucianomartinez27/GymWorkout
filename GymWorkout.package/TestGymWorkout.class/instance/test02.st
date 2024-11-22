tests
test02

	| workoutDay squats |
	workoutDay := GymWorkoutDay withExercises: #(  ).
	squats := Exercise named: 'Squats' reps: #( 8 8 6 ).
	workoutDay addExercise: squats.
	self assert: workoutDay numberOfExercises equals: 1.
	self assert: (workoutDay includesExercise: squats).