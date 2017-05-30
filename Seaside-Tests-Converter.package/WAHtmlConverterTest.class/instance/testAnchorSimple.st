tests
testAnchorSimple

	converter := WAHtmlConverter on: '<a>Click me</a>' readStream.
	self assertCode: converter convertToString equals: 'html anchor: ''Click me''.'.