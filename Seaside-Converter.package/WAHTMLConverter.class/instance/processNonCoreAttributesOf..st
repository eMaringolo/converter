operations
processNonCoreAttributesOf: element
	(self nonCoreAttributesOf: element)
		keysAndValuesDo: [ :k :v | 
			| selector |
			selector := self selectorForAttribute: k value: v tag: element name.
			selector isNil 
				ifTrue: [ self write: 'attributeAt: '; write: k printString; write: 'put: '; write: v printString ]
				ifFalse: [ 
			self write: selector.
			selector asSymbol isKeyword
				ifTrue: [ self space;	write: v printString]].
			self write: '; ' ]