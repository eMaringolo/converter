tests
testAnchorComposite

	self
		assertCode: (WAHtmlConverter convert: '<a><img src="img.png"/></a>')
		equals: 'html anchor: [html image url: ''img.png''; yourself].'