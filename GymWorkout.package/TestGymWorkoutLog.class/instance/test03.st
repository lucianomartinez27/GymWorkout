tests
test03
	"TODO: think better what we want to test"
	| workoutLog workoutWeek |
	workoutWeek := self workoutWeek.
	workoutLog := GymWorkoutLog for: workoutWeek.
	self assert:
		((workoutLog logFor: (workoutWeek day: 1)) isFor:
			 (workoutWeek day: 1))