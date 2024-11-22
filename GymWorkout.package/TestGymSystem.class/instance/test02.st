tests
test02

	| gymSystem anExercise |
	gymSystem := GymSystem new.
	gymSystem createWorkoutWeek.
	anExercise := Exercise named: 'Squats' reps: #( 8 8 6 ).
	
	gymSystem add: anExercise toWeek: 1 day: 1.
	self assert: (gymSystem daysOfWeek: 1) equals: 1