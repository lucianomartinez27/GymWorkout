tests
test05

	| gymSystem |
	gymSystem := GymSystem new.
	gymSystem createWorkoutWeek.
	gymSystem
		add: (Exercise named: 'Squats' reps: #( 8 8 6 ))
		toWeek: 1
		day: 1.
	self assert: gymSystem workoutLogs first logs size equals: 1