mappings - initializing
addCustomAttributeMappings

	(self attributeMappings at: 'a') at: 'href' put: #url:.
	(self attributeMappings at: 'td') 
		at: 'colspan' put: #colSpan:;
		at: 'rowspan' put: #rowSpan: