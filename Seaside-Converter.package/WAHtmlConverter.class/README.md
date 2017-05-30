I'm an HTML to Seaside expression converter.

I take HTML string code as input and output the equivalent Smalltalk code to generate the same output using Seaside canvas brushes.

The mapping between HTML attributes and brushes methods is done automatically by scanning WATagBrush subclasses for senders of attributeAt:put: or attributes at:put:, you can specify your own mappings overriding the ones detected automatically.

I have some settings methods like: 
#forceWith to always use the with: method when nesting brushes, e.g div with: aBlock instead of div: aBlock
#canvasVariable to use as the canvas variable, by default it is 'html' but could be anything else.
