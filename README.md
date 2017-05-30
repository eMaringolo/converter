# Seaside Converter

Convert HTML code to Seaside canvas expressions.


E.g., the following HTML code
```
  <table style="width:100%">
    <tr>
      <td>
        <img src="http://seaside.st/styles/logo-plain.png" alt="Seaside logo">
       </td>
       <td colspan="2" rowspan="2">
         <ul style="list-style-type:square">
           <li>Coffee</li>
           <li>Tea</li>
           <li>Milk</li>
          </ul> 
        </td>
      </tr>
    </table>
```
Will get converted to:

```
html
    table
        style: 'width:100%';
        with: [ html
                tableRow: [ html
                        tableData: [ html image
                                url: 'http://seaside.st/styles/logo-plain.png';
                                altText: 'Seaside logo';
                                yourself ].
                    html tableData
                        colSpan: '2';
                        rowSpan: '2';
                        with: [ html unorderedList
                                style: 'list-style-type:square';
                                with: [ html listItem: 'Coffee'.
                                    html listItem: 'Tea'.
                                    html listItem: 'Milk' ] ] ] ]
```

# How to use
Evaluate `WAHtmlConverter convert: htmlString` and it will return a string containing the Smalltalk code using Seaside methods.

Otherwise you can use the Seaside component `WAHtmlConverterComponent` that should be installed by default at your server in the `/converter` path.

For more details browse the `WAHtmlConverterTest` class.

# Future steps
* Make the converter tool more pretty and less error prone if the output is malformed
* Change the string based generation by a more object oriented one that could handle special canvas selectors like those used by Twitter Bootstrap or Material Design Lite.





                                    
