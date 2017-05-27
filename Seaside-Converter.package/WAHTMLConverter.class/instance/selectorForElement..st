mappings
selectorForElement: element 
	
	^self tagMappings at: element name ifAbsent: [ self defaultSelector ]