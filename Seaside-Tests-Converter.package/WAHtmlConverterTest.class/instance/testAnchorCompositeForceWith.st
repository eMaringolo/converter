tests
testAnchorCompositeForceWith

	converter := WAHtmlConverter on: '<a><img src="img.png"/></a>' readStream.
	converter forceWith.
	self
		assertCode: converter convertToString
		equals: 'html anchor with: [html image url: ''img.png''; yourself].'