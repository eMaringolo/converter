as yet unclassified
testAnchorCompositeForceWith

	converter := WAHTMLConverter on: '<a><img src="img.png"/></a>' readStream.
	converter forceWith.
	self
		assertCode: converter convertToString
		equals: 'html anchor with: [html image url: ''img.png''; yourself].'