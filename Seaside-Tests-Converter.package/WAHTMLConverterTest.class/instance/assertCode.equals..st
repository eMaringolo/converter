as yet unclassified
assertCode: sourceOne equals: sourceTwo
	self
		assert: (self formatCode: sourceOne)
		equals: (self formatCode: sourceTwo)