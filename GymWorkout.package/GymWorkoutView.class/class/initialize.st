class initialization
initialize
	"self initialize"

	(WAAdmin register: self asApplicationAt: '/workout2')
		preferenceAt: #actionPhaseContinuationClass
		put: WATurboCallbackProcessingActionContinuation