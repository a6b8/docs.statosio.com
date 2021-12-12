---
sort: 1
title: A.1. showTitle
---
# showTitle

Show or hide title on the front of the diagram.

```note
The size of the diagramm gets higher inside of the canvas without an title.
```


## Specification

Default implementation: ```{ showTitle : false }```

### Key

| **Name**| **Alias**| **Category** |
| ```showTitle```| ```show__title```| [Show](../options/#show) |

### Value

Allow true or false as value.

| **Default**| **Validation**| **Type** |
| ```false```| ```^(?:true|false)```| Boolean |



## Example A.

Show title

### Output

  <div id="a">
      <script> 
          d3.statosio( 
    file, 
    "name", 
    [ "mobile" ], 
    { "showTitle" : true, "view__dom_id" : "a" }
)

      </script>
  </div>

Open output in a [blank window](../sources/showTitle--example-a.html){:target="_self"}. 
Download examples [as zip](../sources/showTitle.zip){:target="_blank"}. 

### Parameters

This dataset shows the mobile google pagerank performance score for a certain website.

| | **Value** | **Type** |
|------:|:------|:------|
| **Source** | ["../data/performance.json"](../data/performance.json) | String |
| **X** | ```"name"``` | String |
| **Y** | ```[ "mobile" ]``` | Array |
| **Options** | ```{ "showTitle" : true }``` | Object |


### Javascript

* Invoke Function

```javascript
d3.statosio( 
    file, 
    "name", 
    [ "mobile" ], 
    { "showTitle" : true }
)
```

* HTML Implementation

```html
<!DOCTYPE html>
<head>
    <title>d3.statosio - showTitle</title>
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
                    { "showTitle" : true }
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
    options: {"showTitle"=>true}
    
)

Prawn::Document.generate( "statosio.pdf" ) do | pdf |
  pdf.svg( chart, width: 500 )
end
```
## Example B.

Hide title

### Output

  <div id="b">
      <script> 
          d3.statosio( 
    file, 
    "name", 
    [ "mobile" ], 
    { "showTitle" : false, "view__dom_id" : "b" }
)

      </script>
  </div>

Open output in a [blank window](../sources/showTitle--example-b.html){:target="_self"}. 
Download examples [as zip](../sources/showTitle.zip){:target="_blank"}. 

### Parameters

This dataset shows the mobile google pagerank performance score for a certain website.

| | **Value** | **Type** |
|------:|:------|:------|
| **Source** | ["../data/performance.json"](../data/performance.json) | String |
| **X** | ```"name"``` | String |
| **Y** | ```[ "mobile" ]``` | Array |
| **Options** | ```{ "showTitle" : false }``` | Object |


### Javascript

* Invoke Function

```javascript
d3.statosio( 
    file, 
    "name", 
    [ "mobile" ], 
    { "showTitle" : false }
)
```

* HTML Implementation

```html
<!DOCTYPE html>
<head>
    <title>d3.statosio - showTitle</title>
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
                    { "showTitle" : false }
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
    options: {"showTitle"=>false}
    
)

Prawn::Document.generate( "statosio.pdf" ) do | pdf |
  pdf.svg( chart, width: 500 )
end
```
