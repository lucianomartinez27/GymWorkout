rendering
renderContentOn: aCanvas

	aCanvas
		anchor
		callback: [
			self turboCall: (WAExerciseWeightEditor on: log forRep: repNumber) ];
		with: (log weightForRep: repNumber) printString