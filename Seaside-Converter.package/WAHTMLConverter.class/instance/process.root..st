operations
process: element root: aBoolean
	aBoolean
		ifTrue: [ self
				write: 'html';
				space ].
	self
		write: (self selectorForElement: element).
	element attributes notEmpty ifTrue: [ self space ].
	self processCoreAttributesOf: element.
	self processNonCoreAttributesOf: element.
	
	element hasChildren
		ifTrue: [ 
			element attributes notEmpty ifTrue: [self write: 'with'].
			self write: ': '.
			(element nodes size = 1 and: [ element nodes first isElement not])
				ifTrue: [ self
						write: element nodes first asString printString;
						space ]
				ifFalse: [ self write: '['.
					element nodes do: [ :node | self process: node root: true ].
					self write: '].' ] ]
		ifFalse: [ self write: 'yourself.' ]