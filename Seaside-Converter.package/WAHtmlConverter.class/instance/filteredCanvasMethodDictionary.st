mappings - initializing
filteredCanvasMethodDictionary
	^ WAHtmlCanvas methodDictionary
		select: [ :each | each package name = #'Seaside-Canvas' and: [ (self ignoredCanvasSelectors includes: each selector) not ] ]