instance creation
with: aString callback: aFullBlockClosure

	^ self new
		  text: aString;
		  callback: aFullBlockClosure;
		  yourself