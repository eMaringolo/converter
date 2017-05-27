as yet unclassified
testSimpleElement

	converter := WAHTMLConverter on: '<img src="foo.png" alt="Alternative text">' readStream.
	self assert: converter convertToString equals: 'html image url: ''foo.png''; altText: ''Alternative text'''.