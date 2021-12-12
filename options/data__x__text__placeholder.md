---
sort: 18
title: C.4. dataXTextPlaceholder
---
# dataXTextPlaceholder

Set an suffix behind a string. As a signal to the viewer, that the text was cut of.


## Specification

Default implementation: ```{ dataXTextPlaceholder : ... }```

### Key

| **Name**| **Alias**| **Category** |
| ```dataXTextPlaceholder```| ```data__x__text__placeholder```| [Data](../options/#data) |

### Value

Allow A-Z, a-b and 0-9 as value.

| **Default**| **Validation**| **Type** |
| ```"..."```| ```^[a-zA-Z0-9]*$```| String |



## Example A.

Change suffix for cut of x range text labels to: ```-----```

### Output

  <div id="a">
      <script> 
          d3.statosio( 
    file, 
    "name", 
    [ "mobile" ], 
    { "dataXTextPlaceholder" : "-----", "dataXTextLength" : 10, "view__dom_id" : "a" }
)

      </script>
  </div>

Open output in a [blank window](../sources/dataXTextPlaceholder--example-a.html){:target="_self"}. 
Download examples [as zip](../sources/dataXTextPlaceholder.zip){:target="_blank"}. 

### Parameters

This dataset shows the mobile google pagerank performance score for a certain website.

| | **Value** | **Type** |
|------:|:------|:------|
| **Source** | ["../data/performance.json"](../data/performance.json) | String |
| **X** | ```"name"``` | String |
| **Y** | ```[ "mobile" ]``` | Array |
| **Options** | ```{ "dataXTextPlaceholder" : "-----", "dataXTextLength" : 10 }``` | Object |


### Javascript

* Invoke Function

```javascript
d3.statosio( 
    file, 
    "name", 
    [ "mobile" ], 
    { "dataXTextPlaceholder" : "-----", "dataXTextLength" : 10 }
)
```

* HTML Implementation

```html
<!DOCTYPE html>
<head>
    <title>d3.statosio - dataXTextPlaceholder</title>
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
                    { "dataXTextPlaceholder" : "-----", "dataXTextLength" : 10 }
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
    options: {"dataXTextPlaceholder"=>"-----", "dataXTextLength"=>10}
    
)

Prawn::Document.generate( "statosio.pdf" ) do | pdf |
  pdf.svg( chart, width: 500 )
end
```
## Example B.

Change suffix for cut of x range text labels to: ``````

### Output

  <div id="b">
      <script> 
          d3.statosio( 
    file, 
    "name", 
    [ "mobile" ], 
    { "dataXTextPlaceholder" : "", "dataXTextLength" : 10, "view__dom_id" : "b" }
)

      </script>
  </div>

Open output in a [blank window](../sources/dataXTextPlaceholder--example-b.html){:target="_self"}. 
Download examples [as zip](../sources/dataXTextPlaceholder.zip){:target="_blank"}. 

### Parameters

This dataset shows the mobile google pagerank performance score for a certain website.

| | **Value** | **Type** |
|------:|:------|:------|
| **Source** | ["../data/performance.json"](../data/performance.json) | String |
| **X** | ```"name"``` | String |
| **Y** | ```[ "mobile" ]``` | Array |
| **Options** | ```{ "dataXTextPlaceholder" : "", "dataXTextLength" : 10 }``` | Object |


### Javascript

* Invoke Function

```javascript
d3.statosio( 
    file, 
    "name", 
    [ "mobile" ], 
    { "dataXTextPlaceholder" : "", "dataXTextLength" : 10 }
)
```

* HTML Implementation

```html
<!DOCTYPE html>
<head>
    <title>d3.statosio - dataXTextPlaceholder</title>
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
                    { "dataXTextPlaceholder" : "", "dataXTextLength" : 10 }
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
    options: {"dataXTextPlaceholder"=>"", "dataXTextLength"=>10}
    
)

Prawn::Document.generate( "statosio.pdf" ) do | pdf |
  pdf.svg( chart, width: 500 )
end
```
