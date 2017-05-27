as yet unclassified
testAnchorComposite

	self
		assertCode: (WAHTMLConverter convert: '<a><img src="img.png"/></a>')
		equals: 'html anchor: [html image url: ''img.png''; yourself].'