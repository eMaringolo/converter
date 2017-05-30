rendering
formattedOutput
	^ output isEmpty
		ifTrue: [ output ]
		ifFalse: [ self class compilerClass new format: output in: self notifying: self ]