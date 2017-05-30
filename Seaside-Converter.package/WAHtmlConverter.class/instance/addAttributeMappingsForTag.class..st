mappings - initializing
addAttributeMappingsForTag: classTag class: class
	attributeMappings at: classTag ifAbsentPut: [ Dictionary new ].
	(class allSuperclassesIncluding: WATagBrush)
		do: [ :each | 
			each methodDictionary
				do: [ :method | 
					| ast |
					ast := method ast.
					((ast sentMessages includes: #attributeAt:put:)
						or: [ (ast sentMessages includes: #attributes) and: [ ast sentMessages includes: #at:put: ] ])
						ifTrue: [ | htmlAttribute |
							htmlAttribute := self extractAttributeFromMethod: method.
							(attributeMappings at: classTag) at: htmlAttribute put: method selector ] ] ]