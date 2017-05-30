mappings - initializing
addAttributeMappingsScanningSources
	WATagBrush
		allSubclassesDo: [ :class | 
			([ class basicNew tag ]
				on: Error
				do: [ :ex | ex return: nil ]) ifNotNil: [ :classTag | self addAttributeMappingsForTag: classTag class: class ] ]