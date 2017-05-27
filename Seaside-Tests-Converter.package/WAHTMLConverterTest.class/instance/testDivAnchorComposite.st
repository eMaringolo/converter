as yet unclassified
testDivAnchorComposite

	self
		assertCode: (WAHTMLConverter convert: '<div><a><img src="img.png"/></a></div>')
		equals: 'html div: [html anchor: [html image url: ''img.png''; yourself]].'