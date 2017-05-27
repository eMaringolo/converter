mappings
extractAttributeFromMethod: method
	| statements |
	statements := method ast allChildren select: [ :e | e class = RBMessageNode ].
	^ (statements select: [ :each | #(#attributeAt:put: #at:put:) includes: each selector ]) anyOne
		arguments first value