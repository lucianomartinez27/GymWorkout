tests
test04

	| gymSystem |
	gymSystem := GymSystem new.
	gymSystem createWorkoutWeek.
	self assert: gymSystem workoutLogs size equals: 1.
	gymSystem createWorkoutWeek.
	self assert: gymSystem workoutLogs size equals: 2