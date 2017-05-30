mappings
nonCoreAttributesOf: element

	^element attributes associationsSelect: [ :assoc |  ( { 'id'. 'title'. 'class'. 'style' } includes: assoc key) not ]