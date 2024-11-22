tests
test01
	| workoutDay |
	
	workoutDay := GymWorkoutDay withExercises: #().
	self assert: workoutDay numberOfExercises equals: 0.