rendering
initialize

	super initialize.
	system := GymSystem new.
	system createWorkoutWeek.
	system createWorkoutWeek.
	system
		add: (Exercise named: 'Squats' reps: #( 8 8 6 ))
		toWeek: 1
		day: 1.
	system
		add: (Exercise named: 'Exercise' reps: #( 8 8 6 ))
		toWeek: 1
		day: 1.
	system
		add: (Exercise named: 'Legs' reps: #( 8 8 6 ))
		toWeek: 1
		day: 2.
	system
		add: (Exercise named: 'Legs' reps: #( 8 8 6 ))
		toWeek: 2
		day: 1.
	logs := OrderedCollection new