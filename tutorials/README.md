---
sort: 1
---

# Tutorials

### Bar Charts

<div id="bar">
    <script> 
        d3.statosio( 
            file, 
            "name", 
            [ "mobile" ], 
            { "showAverage" : false, "viewDomId" : "bar" }
        )
    </script>
</div>
[Create simple bar chart](../tutorials/simple-bar-chart.html)

### Point Charts

<div id="point">
    <script> 
        d3.statosio( 
            file, 
            "name", 
            [ "mobile" ], 
            { "showDataAsCircle" : true, "showAverage" : false, "viewDomId" : "point" }
        )
    </script>
</div>
[Create a simple point chart](../tutorials/simple-point-chart.html)

### Stacked Bar Charts

<div id="stacked">
    <script> 
        d3.statosio( 
            file, 
            "name", 
            [ "mobile", "desktop" ], 
            { "showLegend": true, "showAverage" : false, "viewDomId" : "stacked" }
        )
    </script>
</div>
[Create simple stacked bar chart](../tutorials/simple-stacked-bar-chart.html)

## Features

### Select columns<br><br>

<div id="select-columns">
    <script> 
        d3.statosio( 
            file, 
            "name", 
            [ "mobile" ], 
            { 
                "dataXSelectors" : ["Data", "Spock"],
                "dataSortSelection" : "start",
                "showAverage" : false,
                "viewDomId" : "select-columns"
            }
        )
    </script>
</div>
[Select and change position of columns](../tutorials/select-data.html)

### Sort Data<br><br>

<div id="sort-data">
    <script> 
        d3.statosio( 
            file, 
            "name", 
            [ "mobile" ], 
            { 
                "dataSortCurrent" : "values", 
                "dataSortByValues" : "ascending", 
                "showAverage" : false,
                "viewDomId" : "sort-data"
            }
        )
    </script>
</div>
[Sort dataset by values](../tutorials/sort-data.html)

### Customize Style

<div id="customize">
    <script> 
        d3.statosio( 
            file, 
            "name", 
            [ "mobile" ], 
            { 
                "styleColorSelectorsChart": ["#E2B08E", "#CC8074"],
                "styleColorCanvasBackground" : "none",
                "styleColorGridline" : "#2F3138",
                "styleStrokeGridline" : 1,
                "styleColorFont" : "#BABABA",
                "styleColorSelectorsText" : ["#E2B08E", "#BABABA"],
                "showAverage" : false,
                "viewDomId" : "customize"
            }
        )
    </script>
</div>
[Change style to dark-mode](../tutorials/change-style.html)