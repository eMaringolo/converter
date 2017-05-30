mappings
extractTagOrBrush: aSymbol from: method
	| statements |
	statements := method ast allChildren select: [ :e | e class = RBMessageNode ].
	^ (statements select: [ :each | aSymbol = each selector ]) anyOne arguments first value