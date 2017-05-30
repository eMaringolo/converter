mappings - initializing
initializeAttributeMappings
	attributeMappings := Dictionary new.
	self addAttributeMappingsScanningSources.
	self addCustomAttributeMappings