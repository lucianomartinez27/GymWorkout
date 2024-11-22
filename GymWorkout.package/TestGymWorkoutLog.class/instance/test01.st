tests
test01

	| exerciseLog |
	exerciseLog := ExerciseLog for: (Exercise named: 'Squats' reps: #( 8 8 6 )).
	exerciseLog setRep: 1 withWeight: 10 * kg.
	self assert: (exerciseLog weightForRep: 1) equals: 10 * kg