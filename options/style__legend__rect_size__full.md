---
sort: 39
title: D.14. styleLegendRectSizeFull
---
# styleLegendRectSizeFull

Set rectangle size of legend item.


## Specification

Default implementation: ```{ styleLegendRectSizeFull : 16 }```

### Key

| **Name**| **Alias**| **Category** |
| ```styleLegendRectSizeFull```| ```style__legend__rect_size__full```| [Style](../options/#style) |

### Value

Allow positive integers beginning from 1 as value.

| **Default**| **Validation**| **Type** |
| ```16```| ```^[1-9]d*$```| Integer |



## Example A.

Set rect size of legend color separators to: ```4```

### Output

  <div id="a">
      <script> 
          d3.statosio( 
    file, 
    "name", 
    [ "mobile" ], 
    { "styleLegendRectSizeFull" : 4, "view__dom_id" : "a" }
)

      </script>
  </div>

Open output in a [blank window](../sources/styleLegendRectSizeFull--example-a.html){:target="_self"}. 
Download examples [as zip](../sources/styleLegendRectSizeFull.zip){:target="_blank"}. 

### Parameters

This dataset shows the mobile google pagerank performance score for a certain website.

| | **Value** | **Type** |
|------:|:------|:------|
| **Source** | ["https://docs.statosio.com/data/performance.json"](https://docs.statosio.com/data/performance.json) |  |
| **X** | ```"name"``` | String |
| **Y** | ```[ "mobile" ]``` | Array |
| **Options** | ```{ "styleLegendRectSizeFull" : 4 }``` | Object |


### Javascript

* Invoke Function

```javascript
d3.statosio( 
    file, 
    "name", 
    [ "mobile" ], 
    { "styleLegendRectSizeFull" : 4 }
)
```

* HTML Implementation

```html
<!DOCTYPE html>
<head>
    <title>docs.statosio - styleLegendRectSizeFull</title>
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
                    [ "mobile" ], 
                    { "styleLegendRectSizeFull" : 4 }
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
    y: [ "mobile" ],
    options: {"styleLegendRectSizeFull"=>4}
    
)

Prawn::Document.generate( "statosio.pdf" ) do | pdf |
  pdf.svg( chart, width: 500 )
end
```
## Example B.

Set rect size of legend color separators to: ```20```

### Output

  <div id="b">
      <script> 
          d3.statosio( 
    file, 
    "name", 
    [ "mobile" ], 
    { "styleLegendRectSizeFull" : 20, "view__dom_id" : "b" }
)

      </script>
  </div>

Open output in a [blank window](../sources/styleLegendRectSizeFull--example-b.html){:target="_self"}. 
Download examples [as zip](../sources/styleLegendRectSizeFull.zip){:target="_blank"}. 

### Parameters

This dataset shows the mobile google pagerank performance score for a certain website.

| | **Value** | **Type** |
|------:|:------|:------|
| **Source** | ["https://docs.statosio.com/data/performance.json"](https://docs.statosio.com/data/performance.json) |  |
| **X** | ```"name"``` | String |
| **Y** | ```[ "mobile" ]``` | Array |
| **Options** | ```{ "styleLegendRectSizeFull" : 20 }``` | Object |


### Javascript

* Invoke Function

```javascript
d3.statosio( 
    file, 
    "name", 
    [ "mobile" ], 
    { "styleLegendRectSizeFull" : 20 }
)
```

* HTML Implementation

```html
<!DOCTYPE html>
<head>
    <title>docs.statosio - styleLegendRectSizeFull</title>
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
                    [ "mobile" ], 
                    { "styleLegendRectSizeFull" : 20 }
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
    y: [ "mobile" ],
    options: {"styleLegendRectSizeFull"=>20}
    
)

Prawn::Document.generate( "statosio.pdf" ) do | pdf |
  pdf.svg( chart, width: 500 )
end
```
