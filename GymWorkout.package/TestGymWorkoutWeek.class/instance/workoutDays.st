as yet unclassified
workoutDays

	^ { GymWorkoutDay withExercises: {
		Exercise named: 'Squats' reps: #( 8 8 6 ).
		Exercise named: 'Bench press' reps: #( 8 8 6 ) }
		} asOrderedCollection .