operations
process: element root: aBoolean
	aBoolean
		ifTrue: [ self
				write: 'html';
				space ].
	self
		write: (self selectorForElement: element);
		space.
	self processCoreAttributesOf: element.
	self processNonCoreAttributesOf: element.
	element hasChildren
		ifTrue: [ self write: 'with: ['.
			element children do: [ :each | self process: each root: true ].
			self write: '].' ]
		ifFalse: [ self write: 'yourself.' ]