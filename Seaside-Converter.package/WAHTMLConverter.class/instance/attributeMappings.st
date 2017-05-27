mappings
attributeMappings
	attributeMappings ifNil:
		[ self initializeAttributeMappings ].
	^ attributeMappings