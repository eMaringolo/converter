tests
testDivAnchorComposite

	self
		assertCode: (WAHtmlConverter convert: '<div><a><img src="img.png"/></a></div>')
		equals: 'html div: [html anchor: [html image url: ''img.png''; yourself]].'