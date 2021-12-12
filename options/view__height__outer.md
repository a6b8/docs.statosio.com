---
sort: 13
title: B.8. viewHeightOuter
---
# viewHeightOuter

Set height of the "canvas" including margin.


## Specification

Default implementation: ```{ viewHeightOuter : 300 }```

### Key

| **Name**| **Alias**| **Category** |
| ```viewHeightOuter```| ```view__height__outer```| [View](../options/#view) |

### Value

Allow positive integers beginning from 1 as value.

| **Default**| **Validation**| **Type** |
| ```300```| ```^[1-9]d*$```| Integer |



## Example A.

Set total height to: ```100```

### Output

  <div id="a">
      <script> 
          d3.statosio( 
    file, 
    "name", 
    [ "mobile" ], 
    { "viewHeightOuter" : 100, "view__dom_id" : "a" }
)

      </script>
  </div>

Open output in a [blank window](../sources/viewHeightOuter--example-a.html){:target="_self"}. 
Download examples [as zip](../sources/viewHeightOuter.zip){:target="_blank"}. 

### Parameters

This dataset shows the mobile google pagerank performance score for a certain website.

| | **Value** | **Type** |
|------:|:------|:------|
| **Source** | ["../data/performance.json"](../data/performance.json) | String |
| **X** | ```"name"``` | String |
| **Y** | ```[ "mobile" ]``` | Array |
| **Options** | ```{ "viewHeightOuter" : 100 }``` | Object |


### Javascript

* Invoke Function

```javascript
d3.statosio( 
    file, 
    "name", 
    [ "mobile" ], 
    { "viewHeightOuter" : 100 }
)
```

* HTML Implementation

```html
<!DOCTYPE html>
<head>
    <title>d3.statosio - viewHeightOuter</title>
    <meta content="text/html;charset=utf-8" http-equiv="Content-Type">
    <meta content="utf-8" http-equiv="encoding">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/d3/6.2.0/d3.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/statosio/0.9/statosio.js"></script>
</head>
<body>
    <script>
        d3.json( "../data/performance.json" )
            .then( ( file ) => {
                d3.statosio( 
                    file, 
                    "name", 
                    [ "mobile" ], 
                    { "viewHeightOuter" : 100 }
                )
            } )
    </script>
</body>
```
### Ruby

* Gem Install

```ruby
gem install statosio
gem install prawn
gem install prawn-svg
```

* Implementation

```ruby
require "statosio"
require "prawn"
require "prawn-svg"

file = File.read( "../data/performance.json" )
dataset = JSON.parse( file )

statosio = Statosio::Generate.new
chart = statosio.svg(
    dataset: dataset,
    x: "name", 
    y: [ "mobile" ],
    options: {"viewHeightOuter"=>100}
    
)

Prawn::Document.generate( "statosio.pdf" ) do | pdf |
  pdf.svg( chart, width: 500 )
end
```
## Example B.

Set total height to: ```600```

### Output

  <div id="b">
      <script> 
          d3.statosio( 
    file, 
    "name", 
    [ "mobile" ], 
    { "viewHeightOuter" : 600, "view__dom_id" : "b" }
)

      </script>
  </div>

Open output in a [blank window](../sources/viewHeightOuter--example-b.html){:target="_self"}. 
Download examples [as zip](../sources/viewHeightOuter.zip){:target="_blank"}. 

### Parameters

This dataset shows the mobile google pagerank performance score for a certain website.

| | **Value** | **Type** |
|------:|:------|:------|
| **Source** | ["../data/performance.json"](../data/performance.json) | String |
| **X** | ```"name"``` | String |
| **Y** | ```[ "mobile" ]``` | Array |
| **Options** | ```{ "viewHeightOuter" : 600 }``` | Object |


### Javascript

* Invoke Function

```javascript
d3.statosio( 
    file, 
    "name", 
    [ "mobile" ], 
    { "viewHeightOuter" : 600 }
)
```

* HTML Implementation

```html
<!DOCTYPE html>
<head>
    <title>d3.statosio - viewHeightOuter</title>
    <meta content="text/html;charset=utf-8" http-equiv="Content-Type">
    <meta content="utf-8" http-equiv="encoding">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/d3/6.2.0/d3.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/statosio/0.9/statosio.js"></script>
</head>
<body>
    <script>
        d3.json( "../data/performance.json" )
            .then( ( file ) => {
                d3.statosio( 
                    file, 
                    "name", 
                    [ "mobile" ], 
                    { "viewHeightOuter" : 600 }
                )
            } )
    </script>
</body>
```
### Ruby

* Gem Install

```ruby
gem install statosio
gem install prawn
gem install prawn-svg
```

* Implementation

```ruby
require "statosio"
require "prawn"
require "prawn-svg"

file = File.read( "../data/performance.json" )
dataset = JSON.parse( file )

statosio = Statosio::Generate.new
chart = statosio.svg(
    dataset: dataset,
    x: "name", 
    y: [ "mobile" ],
    options: {"viewHeightOuter"=>600}
    
)

Prawn::Document.generate( "statosio.pdf" ) do | pdf |
  pdf.svg( chart, width: 500 )
end
```
