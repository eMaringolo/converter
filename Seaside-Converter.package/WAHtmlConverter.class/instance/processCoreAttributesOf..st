operations
processCoreAttributesOf: element
	#('id' 'title' 'style' 'class')
		do: [ :each | 
			element attributes
				at: each
				ifPresent: [ :value | 
					self
						write: each;
						write: ': ';
						write: value printString;
						write: ';' ] ]