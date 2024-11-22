accessing
day: aDayNumber

	^ (workoutDays at: aDayNumber ifAbsentPut: GymWorkoutDay new)