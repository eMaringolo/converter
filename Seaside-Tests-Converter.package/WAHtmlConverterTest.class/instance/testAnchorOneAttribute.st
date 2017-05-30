tests
testAnchorOneAttribute

	converter := WAHtmlConverter on: '<a href="https://www.w3schools.com/html/">Visit our HTML tutorial</a>' readStream.
	self assertCode: converter convertToString equals: 'html anchor url: ''https://www.w3schools.com/html/''; with:''Visit our HTML tutorial''.'.