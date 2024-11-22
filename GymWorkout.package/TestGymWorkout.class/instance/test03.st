tests
test03

	| workoutDay squats |
	squats := Exercise named: 'Squats' reps: #( 8 8 6 ).
	workoutDay := GymWorkoutDay withExercises: { squats }.
	self assert: workoutDay numberOfExercises equals: 1.
	self assert: (workoutDay includesExercise: squats).