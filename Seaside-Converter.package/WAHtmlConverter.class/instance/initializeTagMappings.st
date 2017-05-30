mappings - initializing
initializeTagMappings
	tagMappings := Dictionary new.
	self filteredCanvasMethodDictionary
		keysAndValuesDo: [ :selector :method | 
			| tag |
			(method ast sentMessages includes: #tag:)
				ifTrue: [ (self extractTagOrBrush: #tag: from: method)
						ifNotNil: [ :string | tag := string ] ].
			(method ast sentMessages includes: #brush:)
				ifTrue: [ (self extractTagOrBrush: #brush: from: method)
						ifNotNil: [ :node | 
							| class |
							class := node receiver name asClass.
							(class canUnderstand: #tag)
								ifTrue: [ tag := class basicNew tag ] ] ].
			tag notNil
				ifTrue: [ tagMappings at: tag ifAbsentPut: selector asString ] ].
	self addCustomTagMappings