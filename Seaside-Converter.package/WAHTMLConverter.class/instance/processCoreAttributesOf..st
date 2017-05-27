operations
processCoreAttributesOf: element
	#('id' 'title')
		do: [ :each | 
			element attributes
				at: each
				ifPresent: [ :value | 
					self
						write: each;
						write: ': ';
						write: value printString;
						write: ';' ] ]