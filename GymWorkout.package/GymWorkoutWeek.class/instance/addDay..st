adding
addDay: aGymWorkoutDay
	workoutDays size = 7 ifTrue: [ 
		self error: 'A week can not have more than 7 days of exercises' ].
	workoutDays add: aGymWorkoutDay