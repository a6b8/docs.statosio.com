<img src="./assets/images/statosio.png" height="60px">
<br>

Statosio is an add-on function for [d3.js](https://d3js.org){:target="_blank"} and a standalone ```gem``` for rubys to generate simple charts, in a fast and reliable way.

:heavy_check_mark: build simple diagrams fast and reliable, with one function!

:heavy_check_mark: pure javascript, no additonal css.

:heavy_check_mark: highly customizable with 40+ style and data options.


**Javascript**
```html
<script src="https://cdnjs.cloudflare.com/ajax/libs/statosio/0.9/statosio.js"></script>
```

**Ruby**
```ruby
require 'statosio'
require 'prawn'
require 'prawn-svg'


file = File.read( 'data.json' )
dataset = JSON.parse( file )

statosio = Statosio::Generate.new
chart = statosio.svg(
    dataset: dataset,
    x: 'name',
    y: 'mobile',
    options: {}
)

Prawn::Document.generate( "statosio.pdf" ) do | pdf |
  pdf.svg( chart, width: 500, )
end
```


[![CDNJS](https://img.shields.io/cdnjs/v/statosio.svg)](https://cdnjs.com/libraries/statosio)

## Video Introduction

<iframe width="560" height="315" src="https://www.youtube.com/embed/i6od9O8jz1E?autoplay=1" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## Speedtest

| **Name** | **Result** |
| Loading Time | <insert id='statosioLoadingTime'>waiting..</insert> |
| Dom Elements | <insert id='statosioDomElements'>waiting..</insert> |


