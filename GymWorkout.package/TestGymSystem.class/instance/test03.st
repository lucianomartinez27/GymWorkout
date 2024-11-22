tests
test03

	| gymSystem |
	gymSystem := GymSystem new.
	gymSystem createWorkoutWeek.
	self assert: gymSystem workoutLogs size equals: 1