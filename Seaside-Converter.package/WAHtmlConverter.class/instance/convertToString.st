converting
convertToString
	
	self resetOutput.
	self parseInput.
	self process: self document root firstElement firstElement root: true.
	^self output contents
