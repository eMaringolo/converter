accessing
selectorForAttribute: attributeName value: value tag: tag
	
	^self attributeMappings at: attributeName ifAbsent: [ nil ]