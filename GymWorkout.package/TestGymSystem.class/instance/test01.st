tests
test01
	| gymSystem |
	
	gymSystem := GymSystem new.
	gymSystem createWorkoutWeek.
	self assert: (gymSystem daysOfWeek: 1) equals: 0.