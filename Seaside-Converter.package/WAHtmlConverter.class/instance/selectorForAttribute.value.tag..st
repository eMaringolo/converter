mappings
selectorForAttribute: attributeName value: value tag: tag

	attributeName = 'style' ifTrue: [ Halt now ].
	^ self attributeMappings
		at: tag
		ifPresent: [ :table | table at: attributeName ifAbsent: [ nil ] ]