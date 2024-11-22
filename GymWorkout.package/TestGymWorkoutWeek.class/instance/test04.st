tests
test04

	| workoutWeek legs |
	legs := Exercise named: 'Legs' reps: #( 8 8 6 ).
	workoutWeek := GymWorkoutWeek withDays: self workoutDays.
	workoutWeek atDay: 1 add: legs.
	self assert: ((workoutWeek day: 1) includesExercise: legs)