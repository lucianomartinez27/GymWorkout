creation
createWorkoutWeek

	| workoutWeek |
	workoutWeek := GymWorkoutWeek new.
	workoutWeeks add: workoutWeek.
	workoutLogs add: (GymWorkoutLog for: workoutWeek)