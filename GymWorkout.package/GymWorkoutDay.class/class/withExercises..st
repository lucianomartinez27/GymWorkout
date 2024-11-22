instance-creation
withExercises: aCollectionOfExercises

	| workout |
	workout := self new.
	aCollectionOfExercises do: [ :exercise |
		workout addExercise: exercise ].
	^ workout