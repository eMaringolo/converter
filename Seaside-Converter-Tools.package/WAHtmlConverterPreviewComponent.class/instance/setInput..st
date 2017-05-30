operations
setInput: aString 
	
	inputText := aString.
	converter setInput: aString readStream.
	output := converter convertToString.