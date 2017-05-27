mappings
addStatements: statements into: aCollection

	statements notEmpty ifTrue: [
		aCollection add: statements.
		statements do: [ :each |	self addStatements: each statements into: aCollection ] 
	]
