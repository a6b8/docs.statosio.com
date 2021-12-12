---
sort: 22
title: C.8. dataSortByValues
---
# dataSortByValues

Here you can set type of sorting. You can choose between "ascending" and "decending"

```note
You need to activate this sorting type by setting up the general route in "sort current"
```


## Specification

Default implementation: ```{ dataSortByValues : decending }```

### Key

| **Name**| **Alias**| **Category** |
| ```dataSortByValues```| ```data__sort__by__values```| [Data](../options/#data) |

### Value

Allow "ascending" or "decending" as value.

| **Default**| **Validation**| **Type** |
| ```"decending"```| ```^(?:ascending|decending)```| String |



## Example A.

Set sequence to: ```ascending``` and hide average line.

### Output

  <div id="a">
      <script> 
          d3.statosio( 
    file, 
    "name", 
    [ "mobile" ], 
    { "dataSortCurrent" : "values", "dataSortByValues" : "ascending", "showAverage" : false, "view__dom_id" : "a" }
)

      </script>
  </div>

Open output in a [blank window](../sources/dataSortByValues--example-a.html){:target="_self"}. 
Download examples [as zip](../sources/dataSortByValues.zip){:target="_blank"}. 

### Parameters

This dataset shows the mobile google pagerank performance score for a certain website.

| | **Value** | **Type** |
|------:|:------|:------|
| **Source** | ["../data/performance.json"](../data/performance.json) | String |
| **X** | ```"name"``` | String |
| **Y** | ```[ "mobile" ]``` | Array |
| **Options** | ```{ "dataSortCurrent" : "values", "dataSortByValues" : "ascending", "showAverage" : false }``` | Object |


### Javascript

* Invoke Function

```javascript
d3.statosio( 
    file, 
    "name", 
    [ "mobile" ], 
    { "dataSortCurrent" : "values", "dataSortByValues" : "ascending", "showAverage" : false }
)
```

* HTML Implementation

```html
<!DOCTYPE html>
<head>
    <title>d3.statosio - dataSortByValues</title>
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
                    { "dataSortCurrent" : "values", "dataSortByValues" : "ascending", "showAverage" : false }
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
    options: {"dataSortCurrent"=>"values",
 "dataSortByValues"=>"ascending",
 "showAverage"=>false}
    
)

Prawn::Document.generate( "statosio.pdf" ) do | pdf |
  pdf.svg( chart, width: 500 )
end
```
## Example B.

Set sequence to: ```decending```

### Output

  <div id="b">
      <script> 
          d3.statosio( 
    file, 
    "name", 
    [ "mobile" ], 
    { "dataSortCurrent" : "values", "dataSortByValues" : "decending", "view__dom_id" : "b" }
)

      </script>
  </div>

Open output in a [blank window](../sources/dataSortByValues--example-b.html){:target="_self"}. 
Download examples [as zip](../sources/dataSortByValues.zip){:target="_blank"}. 

### Parameters

This dataset shows the mobile google pagerank performance score for a certain website.

| | **Value** | **Type** |
|------:|:------|:------|
| **Source** | ["../data/performance.json"](../data/performance.json) | String |
| **X** | ```"name"``` | String |
| **Y** | ```[ "mobile" ]``` | Array |
| **Options** | ```{ "dataSortCurrent" : "values", "dataSortByValues" : "decending" }``` | Object |


### Javascript

* Invoke Function

```javascript
d3.statosio( 
    file, 
    "name", 
    [ "mobile" ], 
    { "dataSortCurrent" : "values", "dataSortByValues" : "decending" }
)
```

* HTML Implementation

```html
<!DOCTYPE html>
<head>
    <title>d3.statosio - dataSortByValues</title>
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
                    { "dataSortCurrent" : "values", "dataSortByValues" : "decending" }
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
    options: {"dataSortCurrent"=>"values", "dataSortByValues"=>"decending"}
    
)

Prawn::Document.generate( "statosio.pdf" ) do | pdf |
  pdf.svg( chart, width: 500 )
end
```
## Example C.

Set sequence to: ``````

### Output

  <div id="c">
      <script> 
          d3.statosio( 
    file, 
    "name", 
    [ "mobile" ], 
    { "dataSortCurrent" : "none", "view__dom_id" : "c" }
)

      </script>
  </div>

Open output in a [blank window](../sources/dataSortByValues--example-c.html){:target="_self"}. 
Download examples [as zip](../sources/dataSortByValues.zip){:target="_blank"}. 

### Parameters

This dataset shows the mobile google pagerank performance score for a certain website.

| | **Value** | **Type** |
|------:|:------|:------|
| **Source** | ["../data/performance.json"](../data/performance.json) | String |
| **X** | ```"name"``` | String |
| **Y** | ```[ "mobile" ]``` | Array |
| **Options** | ```{ "dataSortCurrent" : "none" }``` | Object |


### Javascript

* Invoke Function

```javascript
d3.statosio( 
    file, 
    "name", 
    [ "mobile" ], 
    { "dataSortCurrent" : "none" }
)
```

* HTML Implementation

```html
<!DOCTYPE html>
<head>
    <title>d3.statosio - dataSortByValues</title>
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
                    { "dataSortCurrent" : "none" }
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
    options: {"dataSortCurrent"=>"none"}
    
)

Prawn::Document.generate( "statosio.pdf" ) do | pdf |
  pdf.svg( chart, width: 500 )
end
```
