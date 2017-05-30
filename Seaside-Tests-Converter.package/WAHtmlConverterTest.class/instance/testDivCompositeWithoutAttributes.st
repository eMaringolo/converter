tests
testDivCompositeWithoutAttributes

	self
		assertCode: (WAHtmlConverter convert: '<div><img src="img.png"/></div>')
		equals: 'html div: [html image url: ''img.png''; yourself].'