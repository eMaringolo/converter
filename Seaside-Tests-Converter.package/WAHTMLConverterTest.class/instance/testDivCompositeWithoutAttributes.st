as yet unclassified
testDivCompositeWithoutAttributes

	self
		assertCode: (WAHTMLConverter convert: '<div><img src="img.png"/></div>')
		equals: 'html div: [html image url: ''img.png''; yourself].'