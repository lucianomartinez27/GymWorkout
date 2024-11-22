tests
test01

	| workoutWeek |
	workoutWeek := GymWorkoutWeek withDays: self workoutDays.
	self assert: workoutWeek numberOfDays equals: self workoutDays size.