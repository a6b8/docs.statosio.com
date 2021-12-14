---
sort: 20
title: C.6. dataYTicks
---
# dataYTicks

Ticks in d3 land means "steps". Here you can set the steps from the grid and y range.

```note
The number of ticks are an estimation value. For a "nicer" look the d3 method .nice() interpolate the range also.
```


## Specification

Default implementation: ```{ dataYTicks : 5 }```

### Key

| **Name**| **Alias**| **Category** |
| ```dataYTicks```| ```data__y__ticks```| [Data](../options/#data) |

### Value

Allow positive integers beginning from 1 as value.

| **Default**| **Validation**| **Type** |
| ```5```| ```^[1-9]d*$```| Integer |



## Example A.

Change y range ticks to: ```2```

### Output

  <div id="a">
      <script> 
          d3.statosio( 
    file, 
    "name", 
    [ "mobile" ], 
    { "dataYTicks" : 2, "view__dom_id" : "a" }
)

      </script>
  </div>

Open output in a [blank window](../sources/dataYTicks--example-a.html){:target="_self"}. 
Download examples [as zip](../sources/dataYTicks.zip){:target="_blank"}. 

### Parameters

This dataset shows the mobile google pagerank performance score for a certain website.

| | **Value** | **Type** |
|------:|:------|:------|
| **Source** | ["https://docs.statosio.com/data/performance.json"](https://docs.statosio.com/data/performance.json) |  |
| **X** | ```"name"``` | String |
| **Y** | ```[ "mobile" ]``` | Array |
| **Options** | ```{ "dataYTicks" : 2 }``` | Object |


### Javascript

* Invoke Function

```javascript
d3.statosio( 
    file, 
    "name", 
    [ "mobile" ], 
    { "dataYTicks" : 2 }
)
```

* HTML Implementation

```html
<!DOCTYPE html>
<head>
    <title>docs.statosio - dataYTicks</title>
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
                    { "dataYTicks" : 2 }
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
    options: {"dataYTicks"=>2}
    
)

Prawn::Document.generate( "statosio.pdf" ) do | pdf |
  pdf.svg( chart, width: 500 )
end
```
## Example B.

Change y range ticks to: ```20```

### Output

  <div id="b">
      <script> 
          d3.statosio( 
    file, 
    "name", 
    [ "mobile" ], 
    { "dataYTicks" : 20, "view__dom_id" : "b" }
)

      </script>
  </div>

Open output in a [blank window](../sources/dataYTicks--example-b.html){:target="_self"}. 
Download examples [as zip](../sources/dataYTicks.zip){:target="_blank"}. 

### Parameters

This dataset shows the mobile google pagerank performance score for a certain website.

| | **Value** | **Type** |
|------:|:------|:------|
| **Source** | ["https://docs.statosio.com/data/performance.json"](https://docs.statosio.com/data/performance.json) |  |
| **X** | ```"name"``` | String |
| **Y** | ```[ "mobile" ]``` | Array |
| **Options** | ```{ "dataYTicks" : 20 }``` | Object |


### Javascript

* Invoke Function

```javascript
d3.statosio( 
    file, 
    "name", 
    [ "mobile" ], 
    { "dataYTicks" : 20 }
)
```

* HTML Implementation

```html
<!DOCTYPE html>
<head>
    <title>docs.statosio - dataYTicks</title>
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
                    { "dataYTicks" : 20 }
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
    options: {"dataYTicks"=>20}
    
)

Prawn::Document.generate( "statosio.pdf" ) do | pdf |
  pdf.svg( chart, width: 500 )
end
```
