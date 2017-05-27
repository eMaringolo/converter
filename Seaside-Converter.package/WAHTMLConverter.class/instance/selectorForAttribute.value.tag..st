mappings
selectorForAttribute: attributeName value: value tag: tag
	^ self attributeMappings
		at: tag
		ifPresent: [ :table | table at: attributeName ifAbsent: [ nil ] ]