instance creation
on: aLog forRep: repNumber

	^ self basicNew
		  initializeOn: aLog forRep: repNumber;
		  yourself