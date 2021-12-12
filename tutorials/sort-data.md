---
sort: 4 # follow a certain sequence of letters or numbers
title: Sort Dataset by values
---

# Sort dataset by values

## Result

<div id="dataset-result">
    <script> 
        d3.statosio( 
            file, 
            "name", 
            [ "mobile" ], 
            { 
                "dataSortCurrent" : "values", 
                "dataSortByValues" : "ascending", 
                "showAverage" : false,
                "viewDomId" : "dataset-result"
            }
        )
    </script>
</div>

```html
<!DOCTYPE html>
<head>
    <meta content="text/html;charset=utf-8" http-equiv="Content-Type">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/d3/6.2.0/d3.js"></script>
    <script src="../libs/statosio.js"></script>
</head>
<body>
    <script>
        d3.json( "../data/performance.json" )
            .then( ( file ) => {
                d3.statosio( 
                    file, 
                    "name", 
                    [ "mobile" ], 
                    { 
                        "dataSortCurrent" : "values", 
                        "dataSortByValues" : "ascending", 
                        "showAverage" : false,
                    }
                )
            } 
        )
    </script>
</body>
```


## Steps

We need following files.

| **Name** | **Source** | **Description** |
| d3.js | [https://cdnjs.cloudflare.com/ajax/libs/d3/6.2.0/d3.js](https://cdnjs.cloudflare.com/ajax/libs/d3/6.2.0/d3.js) | d3.js Library | 
| statosio.js | [../libs/statosio.js](../libs/statosio.js) | statosio.js Library | 
| performance.json | [../data/performance.json](../data/performance.json) | Dataset |

- statosio.js Structure

```javascript
d3.statosio( source, x, y, options )
``````

| | **Value** | **Type** |
|------:|:------|:------|
| **Source** | ```[{},{}...]``` | Array of Objects |
| **X** | ```"name"``` | String |
| **Y** | ```[ "mobile" ]``` | Array of Strings or String |
| **Options** | ```{}``` | Object |

### 1: HTML Structure
Set HTML Structure

```html
<!DOCTYPE html>
<head>
    <meta content="text/html;charset=utf-8" http-equiv="Content-Type">
</head>
<body>
</body>
```

### 2: Load d3.js
Insert ```<script>``` Element to load d3.js library.

```html
<!DOCTYPE html>
<head>
    <meta content="text/html;charset=utf-8" http-equiv="Content-Type">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/d3/6.2.0/d3.js"></script>
</head>
<body>
</body>
```

### 3: Load statosio.js
Insert ```<script>``` Element to load statosio.js.

```html
<!DOCTYPE html>
<head>
    <meta content="text/html;charset=utf-8" http-equiv="Content-Type">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/d3/6.2.0/d3.js"></script>
    <script src="../libs/statosio.js"></script>
</head>
<body>
</body>

```
[Source Code](../libs/statosio.js)


### 4: Load dataset
d3.js expect a json array with object in it: ```[ {},{}...]```

```html
<!DOCTYPE html>
<head>
    <meta content="text/html;charset=utf-8" http-equiv="Content-Type">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/d3/6.2.0/d3.js"></script>
    <script src="../libs/statosio.js"></script>
</head>
<body>
    <script>
        d3.json( "../data/performance.json" )
            .then( ( file ) => {

            } 
        )
    </script>
</body>
```
[Example Dataset](../data/performance.json)

### 5: Set dataset ranges
Load diagram

- intermediate result
<div id="dataset-range">
    <script> 
        d3.statosio( 
            file, 
            "name", 
            [ "mobile" ], 
            { 
                "viewDomId" : "dataset-range"
            }
        )
    </script>
</div>

```html
<!DOCTYPE html>
<head>
    <meta content="text/html;charset=utf-8" http-equiv="Content-Type">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/d3/6.2.0/d3.js"></script>
    <script src="../libs/statosio.js"></script>
</head>
<body>
    <script>
        d3.json( "../data/performance.json" )
            .then( ( file ) => {
                d3.statosio( 
                    file, 
                    "name", 
                    [ "mobile" ], 
                    {}
                )
            } 
        )
    </script>
</body>
```

[Example Dataset](../data/performance.json)


### 6: Add "data" options

- intermediate result
<div id="intermediate-data">
    <script> 
        d3.statosio( 
            file, 
            "name", 
            [ "mobile" ], 
            { 
                "dataSortCurrent" : "values", 
                "dataSortByValues" : "ascending", 
                "viewDomId" : "intermediate-data" 
            }
        )
    </script>
</div>

```html
<!DOCTYPE html>
<head>
    <meta content="text/html;charset=utf-8" http-equiv="Content-Type">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/d3/6.2.0/d3.js"></script>
    <script src="../libs/statosio.js"></script>
</head>
<body>
    <script>
        d3.json( "../data/performance.json" )
            .then( ( file ) => {
                d3.statosio( 
                    file, 
                    "name", 
                    [ "mobile" ], 
                    { 
                        "dataSortCurrent" : "values", 
                        "dataSortByValues" : "ascending"
                    }
                )
            } 
        )
    </script>
</body>
```

- Option explained

| **Name** | **Description** | **Details** | 
| [dataSortCurrent](../options/data__sort__current.html) | Set the general route for sorting. You can choose between "none", "values", "names". | "values" |
| [dataSortByValues](../options/data__sort__by__values.html) | Here you can set type of sorting. You can choose between "ascending" and "decending" | "ascending" |

List of all "data" Options: [here](../options/index.html#data)


### 7: Add "show" options

- intermediate result
<div id="intermediate-show">
    <script> 
        d3.statosio( 
            file, 
            "name", 
            [ "mobile" ], 
            { 
                "dataSortCurrent" : "values", 
                "dataSortByValues" : "ascending", 
                "showAverage" : false,
                "viewDomId" : "intermediate-show"
            }
        )
    </script>
</div>

```html
<!DOCTYPE html>
<head>
    <meta content="text/html;charset=utf-8" http-equiv="Content-Type">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/d3/6.2.0/d3.js"></script>
    <script src="../libs/statosio.js"></script>
</head>
<body>
    <script>
        d3.json( "../data/performance.json" )
            .then( ( file ) => {
                d3.statosio( 
                    file, 
                    "name", 
                    [ "mobile" ], 
                    { 
                        "dataSortCurrent" : "values", 
                        "dataSortByValues" : "ascending", 
                        "showAverage" : false,
                    }
                )
            } 
        )
    </script>
</body>
```

- Option explained

| **Name** | **Description** | **Details** | 
| [showAverage](../options/show__average.html) | Calculate and show average line | false |

List of all "show" Options: [here](../options/index.html#show)