rendering
renderContentOn: html
	html heading with: 'Convert HTML to Seaside!'.
	html
		table: [ self renderInputOn: html.
			self renderOutputOn: html ]