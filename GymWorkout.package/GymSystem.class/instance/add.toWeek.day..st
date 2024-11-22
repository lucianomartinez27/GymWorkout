adding
add: anExercise toWeek: weekNumber day: dayNumber

	| workoutWeek currentLog |
	workoutWeek := workoutWeeks at: weekNumber.
	workoutWeek atDay: dayNumber add: anExercise.
	currentLog := workoutLogs detect: [ :log | log isFor: workoutWeek ].
	workoutLogs
		at: (workoutLogs indexOf: currentLog)
		put: (GymWorkoutLog for: workoutWeek)