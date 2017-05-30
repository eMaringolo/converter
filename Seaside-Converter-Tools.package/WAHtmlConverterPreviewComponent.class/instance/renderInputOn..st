rendering
renderInputOn: html
html
				tableRow: [ html
						tableData
							with: [ html heading
								level2;
								with: 'HTML Input'.
							html
								form: [ html textArea
										id: 'input';
										rows: 10;
										columns: 80;
										callback: [ :value | self setInput: value ];
										with: [ html text: self inputText ].
									html break.
									html submitButton with: 'Convert!' ] ].
					html
						tableData: [ html heading
								level2;
								with: 'Rendered HTML Input'.
							html html: self inputText ] ] 