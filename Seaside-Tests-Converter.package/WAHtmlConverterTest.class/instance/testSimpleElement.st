tests
testSimpleElement

	converter := WAHtmlConverter on: '<img id="logo" title="Main logo" src="foo.png" alt="Alternative text">' readStream.
	self assertCode: converter convertToString equals: 'html image id: ''logo''; title: ''Main logo''; url: ''foo.png''; altText: ''Alternative text''; yourself.'.