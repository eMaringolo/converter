mappings
initializeAttributeMappings
	attributeMappings := Dictionary new.
	WATagBrush
		allSubclassesDo: [ :class | 
			| classTag |
			[classTag := class tag] on: Error do: [ :ex | ex return: nil ].
			classTag notNil ifTrue: [ 
				class methodDictionary
				do: [ :method | 
					| ast |
					ast := method ast.
					((ast sentMessages includes: #attributeAt:put:)
						or: [ (ast sentMessages includes: #attributes) and: [ ast sentMessages includes: #at:put: ] ])
						ifTrue: [ | htmlAttribute |
							htmlAttribute := self extractAttributeFromMethod: method.
							(attributeMappings at: classTag ifAbsentPut: [ Dictionary new ])
								at: htmlAttribute
								put: method selector ] ] ]]