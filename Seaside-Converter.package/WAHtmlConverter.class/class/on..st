instance creation
on: aReadStream 
	
	^self new 
		setInput: aReadStream readStream;
		yourself