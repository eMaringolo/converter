rendering
renderOutputOn: html
	html
		tableRow: [ html
				tableData: [ html heading
						level2;
						with: 'Seaside code output'.
					html textArea
						id: 'input';
						rows: 10;
						columns: 80;
						with: self formattedOutput ];
				tableData: [ html heading
						level2;
						with: 'Rendered Seaside output'.
					self class compilerClass new evaluate: output in: thisContext to: self ] ]