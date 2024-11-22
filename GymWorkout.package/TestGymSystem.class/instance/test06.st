tests
test06

	| gymSystem |
	gymSystem := GymSystem new.
	gymSystem createWorkoutWeek.
	gymSystem
		add: (Exercise named: 'Squats' reps: #( 8 8 6 ))
		toWeek: 1
		day: 1.
	self
		assert: (gymSystem logsForWeek: 1) workout
		equals: gymSystem workoutWeeks first