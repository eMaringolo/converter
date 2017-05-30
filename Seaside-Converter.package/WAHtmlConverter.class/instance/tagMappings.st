accessing
tagMappings
	tagMappings ifNil:
		[ self initializeTagMappings. ].
	^ tagMappings