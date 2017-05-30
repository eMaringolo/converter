operations
process: element root: aBoolean
	aBoolean
		ifTrue: [ self
				write: self canvasVariable;
				space ].
	self write: (self selectorForElement: element).
	(forceWith or: [ element attributes notEmpty ])
		ifTrue: [ self space ].
	self processAttributesOf: element.
	element hasChildren
		ifTrue: [ (forceWith or: [ element attributes notEmpty ])
				ifTrue: [ self write: 'with' ].
			self write: ': '.
			(element nodes size = 1 and: [ element nodes first isElement not ])
				ifTrue: [ self
						write: element nodes first asString printString;
						space ]
				ifFalse: [ self write: '['.
					(element nodes reject: [ :each | each isStringNode ])
						do: [ :node | self process: node root: true ].
					self write: ']' ].
			self write: '.' ]
		ifFalse: [ self write: 'yourself.' ]