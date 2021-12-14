---
sort: 32
title: D.7. styleColorSelectorsText
---
# styleColorSelectorsText

Colorize the font of the selection. Use "hex" values or "html" color-names.


## Specification

Default implementation: ```{ styleColorSelectorsText : ["#000000", "#000000"] }```

### Key

| **Name**| **Alias**| **Category** |
| ```styleColorSelectorsText```| ```style__color__selectors__text```| [Style](../options/#style) |

### Value

Allow hex values including short writing needs to with starting with #.

| **Default**| **Validation**| **Type** |
| ```["#000000", "#000000"]```| ```^#([A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})$```| Array |



## Example A.

Set font color of selection and others to: ```["grey", "lightgrey"]```

### Output

  <div id="a">
      <script> 
          d3.statosio( 
    file, 
    "name", 
    [ "mobile",  "desktop" ], 
    { "styleColorSelectorsText" : ["grey", "lightgrey"], "dataXSelectors" : ["Spock"], "view__dom_id" : "a" }
)

      </script>
  </div>

Open output in a [blank window](../sources/styleColorSelectorsText--example-a.html){:target="_self"}. 
Download examples [as zip](../sources/styleColorSelectorsText.zip){:target="_blank"}. 

### Parameters

This dataset shows the mobile **and** desktop google pagerank performance score for a certain website.

| | **Value** | **Type** |
|------:|:------|:------|
| **Source** | ["https://docs.statosio.com/data/performance.json"](https://docs.statosio.com/data/performance.json) |  |
| **X** | ```"name"``` | String |
| **Y** | ```[ "mobile",  "desktop" ]``` | Array |
| **Options** | ```{ "styleColorSelectorsText" : ["grey", "lightgrey"], "dataXSelectors" : ["Spock"] }``` | Object |


### Javascript

* Invoke Function

```javascript
d3.statosio( 
    file, 
    "name", 
    [ "mobile",  "desktop" ], 
    { "styleColorSelectorsText" : ["grey", "lightgrey"], "dataXSelectors" : ["Spock"] }
)
```

* HTML Implementation

```html
<!DOCTYPE html>
<head>
    <title>docs.statosio - styleColorSelectorsText</title>
    <meta content="text/html;charset=utf-8" http-equiv="Content-Type">
    <meta content="utf-8" http-equiv="encoding">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/d3/6.2.0/d3.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/statosio/0.9/statosio.js"></script>
</head>
<body>
    <script>
        d3.json( "https://docs.statosio.com/data/performance.json" )
            .then( ( file ) => {
                d3.statosio( 
                    file, 
                    "name", 
                    [ "mobile",  "desktop" ], 
                    { "styleColorSelectorsText" : ["grey", "lightgrey"], "dataXSelectors" : ["Spock"] }
                )
            } )
    </script>
</body>
```
### Ruby

* Gem Install

```bash
gem install statosio
gem install prawn
gem install prawn-svg
gem install open-uri
```

* Implementation

```ruby
require "statosio"

require "open-uri"
require "prawn"
require "prawn-svg"

url = "https://docs.statosio.com/data/performance.json"
file = OpenURI::open_uri( url ).read
dataset = JSON.parse( file )

statosio = Statosio::Generate.new
chart = statosio.svg(
    dataset: dataset,
    x: "name", 
    y: [ "mobile",  "desktop" ],
    options: {"styleColorSelectorsText"=>["grey", "lightgrey"], "dataXSelectors"=>["Spock"]}
    
)

Prawn::Document.generate( "statosio.pdf" ) do | pdf |
  pdf.svg( chart, width: 500 )
end
```
## Example B.

Set font color of selection and others to: ```["#f59351", "#a6b797"]```

### Output

  <div id="b">
      <script> 
          d3.statosio( 
    file, 
    "name", 
    [ "mobile",  "desktop" ], 
    { "styleColorSelectorsText" : ["#f59351", "#a6b797"], "dataXSelectors" : ["Spock"], "view__dom_id" : "b" }
)

      </script>
  </div>

Open output in a [blank window](../sources/styleColorSelectorsText--example-b.html){:target="_self"}. 
Download examples [as zip](../sources/styleColorSelectorsText.zip){:target="_blank"}. 

### Parameters

This dataset shows the mobile **and** desktop google pagerank performance score for a certain website.

| | **Value** | **Type** |
|------:|:------|:------|
| **Source** | ["https://docs.statosio.com/data/performance.json"](https://docs.statosio.com/data/performance.json) |  |
| **X** | ```"name"``` | String |
| **Y** | ```[ "mobile",  "desktop" ]``` | Array |
| **Options** | ```{ "styleColorSelectorsText" : ["#f59351", "#a6b797"], "dataXSelectors" : ["Spock"] }``` | Object |


### Javascript

* Invoke Function

```javascript
d3.statosio( 
    file, 
    "name", 
    [ "mobile",  "desktop" ], 
    { "styleColorSelectorsText" : ["#f59351", "#a6b797"], "dataXSelectors" : ["Spock"] }
)
```

* HTML Implementation

```html
<!DOCTYPE html>
<head>
    <title>docs.statosio - styleColorSelectorsText</title>
    <meta content="text/html;charset=utf-8" http-equiv="Content-Type">
    <meta content="utf-8" http-equiv="encoding">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/d3/6.2.0/d3.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/statosio/0.9/statosio.js"></script>
</head>
<body>
    <script>
        d3.json( "https://docs.statosio.com/data/performance.json" )
            .then( ( file ) => {
                d3.statosio( 
                    file, 
                    "name", 
                    [ "mobile",  "desktop" ], 
                    { "styleColorSelectorsText" : ["#f59351", "#a6b797"], "dataXSelectors" : ["Spock"] }
                )
            } )
    </script>
</body>
```
### Ruby

* Gem Install

```bash
gem install statosio
gem install prawn
gem install prawn-svg
gem install open-uri
```

* Implementation

```ruby
require "statosio"

require "open-uri"
require "prawn"
require "prawn-svg"

url = "https://docs.statosio.com/data/performance.json"
file = OpenURI::open_uri( url ).read
dataset = JSON.parse( file )

statosio = Statosio::Generate.new
chart = statosio.svg(
    dataset: dataset,
    x: "name", 
    y: [ "mobile",  "desktop" ],
    options: {"styleColorSelectorsText"=>["#f59351", "#a6b797"],
 "dataXSelectors"=>["Spock"]}
    
)

Prawn::Document.generate( "statosio.pdf" ) do | pdf |
  pdf.svg( chart, width: 500 )
end
```
