as yet unclassified
assertCode: sourceOne equals: sourceTwo

	self assert: (self class compiler format: sourceOne) equals: (self class compiler format: sourceTwo)