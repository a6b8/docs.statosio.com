---
sort: 2
title: A.2. showLegend
---
# showLegend

Show or hide legend. Recommended for stacked diagrams.

```note
The size of the diagramm gets higher inside of the canvas without an legend.
```


## Specification

Default implementation: ```{ showLegend : false }```

### Key

| **Name**| **Alias**| **Category** |
| ```showLegend```| ```show__legend```| [Show](../options/#show) |

### Value

Allow true or false as value.

| **Default**| **Validation**| **Type** |
| ```false```| ```^(?:true|false)```| Boolean |



## Example A.

Show legend

### Output

  <div id="a">
      <script> 
          d3.statosio( 
    file, 
    "name", 
    [ "mobile",  "desktop" ], 
    { "showLegend" : true, "view__dom_id" : "a" }
)

      </script>
  </div>

Open output in a [blank window](../sources/showLegend--example-a.html){:target="_self"}. 
Download examples [as zip](../sources/showLegend.zip){:target="_blank"}. 

### Parameters

This dataset shows the mobile **and** desktop google pagerank performance score for a certain website.

| | **Value** | **Type** |
|------:|:------|:------|
| **Source** | ["../data/performance.json"](../data/performance.json) | String |
| **X** | ```"name"``` | String |
| **Y** | ```[ "mobile",  "desktop" ]``` | Array |
| **Options** | ```{ "showLegend" : true }``` | Object |


### Javascript

* Invoke Function

```javascript
d3.statosio( 
    file, 
    "name", 
    [ "mobile",  "desktop" ], 
    { "showLegend" : true }
)
```

* HTML Implementation

```html
<!DOCTYPE html>
<head>
    <title>d3.statosio - showLegend</title>
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
                    [ "mobile",  "desktop" ], 
                    { "showLegend" : true }
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
    y: [ "mobile",  "desktop" ],
    options: {"showLegend"=>true}
    
)

Prawn::Document.generate( "statosio.pdf" ) do | pdf |
  pdf.svg( chart, width: 500 )
end
```
## Example B.

Hide legend

### Output

  <div id="b">
      <script> 
          d3.statosio( 
    file, 
    "name", 
    [ "mobile",  "desktop" ], 
    { "showLegend" : false, "view__dom_id" : "b" }
)

      </script>
  </div>

Open output in a [blank window](../sources/showLegend--example-b.html){:target="_self"}. 
Download examples [as zip](../sources/showLegend.zip){:target="_blank"}. 

### Parameters

This dataset shows the mobile **and** desktop google pagerank performance score for a certain website.

| | **Value** | **Type** |
|------:|:------|:------|
| **Source** | ["../data/performance.json"](../data/performance.json) | String |
| **X** | ```"name"``` | String |
| **Y** | ```[ "mobile",  "desktop" ]``` | Array |
| **Options** | ```{ "showLegend" : false }``` | Object |


### Javascript

* Invoke Function

```javascript
d3.statosio( 
    file, 
    "name", 
    [ "mobile",  "desktop" ], 
    { "showLegend" : false }
)
```

* HTML Implementation

```html
<!DOCTYPE html>
<head>
    <title>d3.statosio - showLegend</title>
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
                    [ "mobile",  "desktop" ], 
                    { "showLegend" : false }
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
    y: [ "mobile",  "desktop" ],
    options: {"showLegend"=>false}
    
)

Prawn::Document.generate( "statosio.pdf" ) do | pdf |
  pdf.svg( chart, width: 500 )
end
```
## Example C.

Hide legend

### Output

  <div id="c">
      <script> 
          d3.statosio( 
    file, 
    "name", 
    [ "mobile",  "desktop" ], 
    { "showLegend" : true, "showAverage" : false, "view__dom_id" : "c" }
)

      </script>
  </div>

Open output in a [blank window](../sources/showLegend--example-c.html){:target="_self"}. 
Download examples [as zip](../sources/showLegend.zip){:target="_blank"}. 

### Parameters

This dataset shows the mobile **and** desktop google pagerank performance score for a certain website.

| | **Value** | **Type** |
|------:|:------|:------|
| **Source** | ["../data/performance.json"](../data/performance.json) | String |
| **X** | ```"name"``` | String |
| **Y** | ```[ "mobile",  "desktop" ]``` | Array |
| **Options** | ```{ "showLegend" : true, "showAverage" : false }``` | Object |


### Javascript

* Invoke Function

```javascript
d3.statosio( 
    file, 
    "name", 
    [ "mobile",  "desktop" ], 
    { "showLegend" : true, "showAverage" : false }
)
```

* HTML Implementation

```html
<!DOCTYPE html>
<head>
    <title>d3.statosio - showLegend</title>
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
                    [ "mobile",  "desktop" ], 
                    { "showLegend" : true, "showAverage" : false }
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
    y: [ "mobile",  "desktop" ],
    options: {"showLegend"=>true, "showAverage"=>false}
    
)

Prawn::Document.generate( "statosio.pdf" ) do | pdf |
  pdf.svg( chart, width: 500 )
end
```
