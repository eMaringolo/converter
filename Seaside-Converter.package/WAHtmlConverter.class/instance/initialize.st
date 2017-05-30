initializing
initialize
	super initialize.
	canvasVariable := 'html'.
	forceWith := false.
	self initializeIgnoredCanvasSelectors.
	self ignoreKnownSelectors