as yet unclassified
testAnchorSimple

	converter := WAHTMLConverter on: '<a>Click me</a>' readStream.
	self assertCode: converter convertToString equals: 'html anchor: ''Click me''.'.