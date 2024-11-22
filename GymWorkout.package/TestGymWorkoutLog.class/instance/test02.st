tests
test02

	| exerciseLog |
	exerciseLog := ExerciseLog for:
		               (Exercise named: 'Squats' reps: #( 8 8 6 )).
	exerciseLog setRep: 2 withWeight: 10 * kg.
	self assert: (exerciseLog weightForRep: 1) equals: 0 * kg.
	self assert: (exerciseLog weightForRep: 2) equals: 10 * kg