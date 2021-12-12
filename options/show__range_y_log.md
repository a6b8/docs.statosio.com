---
sort: 4
title: A.4. showRangeYLog
---
# showRangeYLog

Calculate and show range y in a log scale.


## Specification

Default implementation: ```{ showRangeYLog : false }```

### Key

| **Name**| **Alias**| **Category** |
| ```showRangeYLog```| ```show__range_y_log```| [Show](../options/#show) |

### Value

Allow true or false as value.

| **Default**| **Validation**| **Type** |
| ```false```| ```^(?:true|false)```| Boolean |



## Example A.

Show Y Range in Log Scale

### Output

  <div id="a">
      <script> 
          d3.statosio( 
    file, 
    "name", 
    [ "mobile" ], 
    { "showRangeYLog" : true, "view__dom_id" : "a" }
)

      </script>
  </div>

Open output in a [blank window](../sources/showRangeYLog--example-a.html){:target="_self"}. 
Download examples [as zip](../sources/showRangeYLog.zip){:target="_blank"}. 

### Parameters

This dataset shows the mobile google pagerank performance score for a certain website.

| | **Value** | **Type** |
|------:|:------|:------|
| **Source** | ["../data/performance.json"](../data/performance.json) | String |
| **X** | ```"name"``` | String |
| **Y** | ```[ "mobile" ]``` | Array |
| **Options** | ```{ "showRangeYLog" : true }``` | Object |


### Javascript

* Invoke Function

```javascript
d3.statosio( 
    file, 
    "name", 
    [ "mobile" ], 
    { "showRangeYLog" : true }
)
```

* HTML Implementation

```html
<!DOCTYPE html>
<head>
    <title>d3.statosio - showRangeYLog</title>
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
                    { "showRangeYLog" : true }
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
    options: {"showRangeYLog"=>true}
    
)

Prawn::Document.generate( "statosio.pdf" ) do | pdf |
  pdf.svg( chart, width: 500 )
end
```
## Example B.

Show Y Range in Linear Scale

### Output

  <div id="b">
      <script> 
          d3.statosio( 
    file, 
    "name", 
    [ "mobile" ], 
    { "showRangeYLog" : false, "view__dom_id" : "b" }
)

      </script>
  </div>

Open output in a [blank window](../sources/showRangeYLog--example-b.html){:target="_self"}. 
Download examples [as zip](../sources/showRangeYLog.zip){:target="_blank"}. 

### Parameters

This dataset shows the mobile google pagerank performance score for a certain website.

| | **Value** | **Type** |
|------:|:------|:------|
| **Source** | ["../data/performance.json"](../data/performance.json) | String |
| **X** | ```"name"``` | String |
| **Y** | ```[ "mobile" ]``` | Array |
| **Options** | ```{ "showRangeYLog" : false }``` | Object |


### Javascript

* Invoke Function

```javascript
d3.statosio( 
    file, 
    "name", 
    [ "mobile" ], 
    { "showRangeYLog" : false }
)
```

* HTML Implementation

```html
<!DOCTYPE html>
<head>
    <title>d3.statosio - showRangeYLog</title>
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
                    { "showRangeYLog" : false }
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
    options: {"showRangeYLog"=>false}
    
)

Prawn::Document.generate( "statosio.pdf" ) do | pdf |
  pdf.svg( chart, width: 500 )
end
```
