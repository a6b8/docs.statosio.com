---
sort: 2
title: 64 Diagrams
---

# 64 Diagrams

## Result

| **Name** | **Result** |
| Loading Time | <insert id='statosioLoadingTime'>waiting..</insert> |
| Dom Elements | <insert id='statosioDomElements'>waiting..</insert> |

## Diagrams

### 1. showTitle (A)

<div id="example-1">
	<script>
		d3.statosio(file,"name",["mobile"],{"showTitle":true,"viewDomId":"example-1"})
	</script>
</div>
[More Details](../options/show__title.html#example-a) | Show title

### 2. showTitle (B)

<div id="example-2">
	<script>
		d3.statosio(file,"name",["mobile"],{"showTitle":false,"viewDomId":"example-2"})
	</script>
</div>
[More Details](../options/show__title.html#example-b) | Hide title

### 3. showLegend (A)

<div id="example-3">
	<script>
		d3.statosio(file,"name",["mobile","desktop"],{"showLegend":true,"viewDomId":"example-3"})
	</script>
</div>
[More Details](../options/show__legend.html#example-a) | Show legend

### 4. showLegend (B)

<div id="example-4">
	<script>
		d3.statosio(file,"name",["mobile","desktop"],{"showLegend":false,"viewDomId":"example-4"})
	</script>
</div>
[More Details](../options/show__legend.html#example-b) | Hide legend

### 5. showLegend (C)

<div id="example-5">
	<script>
		d3.statosio(file,"name",["mobile","desktop"],{"showLegend":true,"showAverage":false,"viewDomId":"example-5"})
	</script>
</div>
[More Details](../options/show__legend.html#example-c) | Hide legend

### 6. showAverage (A)

<div id="example-6">
	<script>
		d3.statosio(file,"name",["mobile"],{"showAverage":true,"viewDomId":"example-6"})
	</script>
</div>
[More Details](../options/show__average.html#example-a) | Show average Line

### 7. showAverage (B)

<div id="example-7">
	<script>
		d3.statosio(file,"name",["mobile"],{"showAverage":false,"viewDomId":"example-7"})
	</script>
</div>
[More Details](../options/show__average.html#example-b) | Hide average Line

### 8. showAverage (C)

<div id="example-8">
	<script>
		d3.statosio(file,"name",["mobile"],{"showAverage":false,"showDataAsCircle":true,"viewDomId":"example-8"})
	</script>
</div>
[More Details](../options/show__average.html#example-c) | Hide average Line as show data with as points

### 9. showRangeYLog (A)

<div id="example-9">
	<script>
		d3.statosio(file,"name",["mobile"],{"showRangeYLog":true,"viewDomId":"example-9"})
	</script>
</div>
[More Details](../options/show__range_y_log.html#example-a) | Show Y Range in Log Scale

### 10. showRangeYLog (B)

<div id="example-10">
	<script>
		d3.statosio(file,"name",["mobile"],{"showRangeYLog":false,"viewDomId":"example-10"})
	</script>
</div>
[More Details](../options/show__range_y_log.html#example-b) | Show Y Range in Linear Scale

### 11. showDataAsCircle (A)

<div id="example-11">
	<script>
		d3.statosio(file,"name",["mobile"],{"showDataAsCircle":true,"viewDomId":"example-11"})
	</script>
</div>
[More Details](../options/show__data_as_circle.html#example-a) | Draw data with circles

### 12. showDataAsCircle (B)

<div id="example-12">
	<script>
		d3.statosio(file,"name",["mobile"],{"showDataAsCircle":false,"viewDomId":"example-12"})
	</script>
</div>
[More Details](../options/show__data_as_circle.html#example-b) | Draw data with bars

### 13. showDataAsCircle (C)

<div id="example-13">
	<script>
		d3.statosio(file,"name",["mobile"],{"showDataAsCircle":true,"showAverage":false,"viewDomId":"example-13"})
	</script>
</div>
[More Details](../options/show__data_as_circle.html#example-c) | Hide average Line as show data with as points

### 14. viewTitle (A)

<div id="example-14">
	<script>
		d3.statosio(file,"name",["mobile"],{"viewTitle":"42","viewDomId":"example-14"})
	</script>
</div>
[More Details](../options/view__title.html#example-a) | Change title to: "```42```"

### 15. viewDomId (A)

<div id="example-15">
	<script>
		d3.statosio(file,"name",["mobile"],{"viewDomId":"example-15"})
	</script>
</div>
[More Details](../options/view__dom_id.html#example-a) | Insert SVG into the DOM Element with the id: "```findMe```"

### 16. viewMarginTop (A)

<div id="example-16">
	<script>
		d3.statosio(file,"name",["mobile"],{"viewMarginTop":0,"viewDomId":"example-16"})
	</script>
</div>
[More Details](../options/view__margin__top.html#example-a) | Set top margin to: ```0```

### 17. viewMarginTop (B)

<div id="example-17">
	<script>
		d3.statosio(file,"name",["mobile"],{"viewMarginTop":150,"viewDomId":"example-17"})
	</script>
</div>
[More Details](../options/view__margin__top.html#example-b) | Set top margin to: ```150```

### 18. viewMarginRight (A)

<div id="example-18">
	<script>
		d3.statosio(file,"name",["mobile"],{"viewMarginRight":0,"viewDomId":"example-18"})
	</script>
</div>
[More Details](../options/view__margin__right.html#example-a) | Set right margin to: ```0```

### 19. viewMarginRight (B)

<div id="example-19">
	<script>
		d3.statosio(file,"name",["mobile"],{"viewMarginRight":200,"viewDomId":"example-19"})
	</script>
</div>
[More Details](../options/view__margin__right.html#example-b) | Set right margin to: ```200```

### 20. viewMarginBottom (A)

<div id="example-20">
	<script>
		d3.statosio(file,"name",["mobile"],{"viewMarginBottom":0,"viewDomId":"example-20"})
	</script>
</div>
[More Details](../options/view__margin__bottom.html#example-a) | Set bottom margin to: ```0```

### 21. viewMarginBottom (B)

<div id="example-21">
	<script>
		d3.statosio(file,"name",["mobile"],{"viewMarginBottom":200,"viewDomId":"example-21"})
	</script>
</div>
[More Details](../options/view__margin__bottom.html#example-b) | Set bottom margin to: ```200```

### 22. viewMarginLeft (A)

<div id="example-22">
	<script>
		d3.statosio(file,"name",["mobile"],{"viewMarginLeft":0,"viewDomId":"example-22"})
	</script>
</div>
[More Details](../options/view__margin__left.html#example-a) | Set left margin to: ```0```

### 23. viewMarginLeft (B)

<div id="example-23">
	<script>
		d3.statosio(file,"name",["mobile"],{"viewMarginLeft":200,"viewDomId":"example-23"})
	</script>
</div>
[More Details](../options/view__margin__left.html#example-b) | Set left margin to: ```200```

### 24. viewWidthOuter (A)

<div id="example-24">
	<script>
		d3.statosio(file,"name",["mobile"],{"viewWidthOuter":200,"viewDomId":"example-24"})
	</script>
</div>
[More Details](../options/view__width__outer.html#example-a) | Set total width to: ```200```

### 25. viewWidthOuter (B)

<div id="example-25">
	<script>
		d3.statosio(file,"name",["mobile"],{"viewWidthOuter":800,"viewDomId":"example-25"})
	</script>
</div>
[More Details](../options/view__width__outer.html#example-b) | Set total width to: ```800```

### 26. viewHeightOuter (A)

<div id="example-26">
	<script>
		d3.statosio(file,"name",["mobile"],{"viewHeightOuter":100,"viewDomId":"example-26"})
	</script>
</div>
[More Details](../options/view__height__outer.html#example-a) | Set total height to: ```100```

### 27. viewHeightOuter (B)

<div id="example-27">
	<script>
		d3.statosio(file,"name",["mobile"],{"viewHeightOuter":600,"viewDomId":"example-27"})
	</script>
</div>
[More Details](../options/view__height__outer.html#example-b) | Set total height to: ```600```

### 28. viewTranslateMultiplicator (A)

<div id="example-28">
	<script>
		d3.statosio(file,"name",["mobile"],{"viewTranslateMultiplicator":0.42,"viewDomId":"example-28"})
	</script>
</div>
[More Details](../options/view__translate__multiplicator.html#example-a) | Change distance between title, legend and diagram to: ```0.42```

### 29. viewTranslateMultiplicator (B)

<div id="example-29">
	<script>
		d3.statosio(file,"name",["mobile"],{"viewTranslateMultiplicator":2.42,"viewDomId":"example-29"})
	</script>
</div>
[More Details](../options/view__translate__multiplicator.html#example-b) | Change distance between title, legend and diagram to: ```2.42```

### 30. dataXSelectors (A)

<div id="example-30">
	<script>
		d3.statosio(file,"name",["mobile"],{"dataXSelectors":["Data"],"showAverage":false,"viewDomId":"example-30"})
	</script>
</div>
[More Details](../options/data__x__selectors.html#example-a) | Selection is set to: ```["Data"]```

### 31. dataXSelectors (B)

<div id="example-31">
	<script>
		d3.statosio(file,"name",["mobile"],{"dataXSelectors":["Spock","Data"],"viewDomId":"example-31"})
	</script>
</div>
[More Details](../options/data__x__selectors.html#example-b) | Multiple selections are set: ```["Spock", "Data"]```

### 32. dataXTextLength (A)

<div id="example-32">
	<script>
		d3.statosio(file,"name",["mobile"],{"dataXTextLength":5,"viewDomId":"example-32"})
	</script>
</div>
[More Details](../options/data__x__text__length.html#example-a) | Set the maximum text label length for x range values to: ```5```

### 33. dataXTextLength (B)

<div id="example-33">
	<script>
		d3.statosio(file,"name",["mobile"],{"dataXTextLength":18,"viewDomId":"example-33"})
	</script>
</div>
[More Details](../options/data__x__text__length.html#example-b) | Set the maximum text label length for x range values to: ```18```

### 34. dataXTextPlaceholder (A)

<div id="example-34">
	<script>
		d3.statosio(file,"name",["mobile"],{"dataXTextPlaceholder":"-----","dataXTextLength":10,"viewDomId":"example-34"})
	</script>
</div>
[More Details](../options/data__x__text__placeholder.html#example-a) | Change suffix for cut of x range text labels to: ```-----```

### 35. dataXTextPlaceholder (B)

<div id="example-35">
	<script>
		d3.statosio(file,"name",["mobile"],{"dataXTextPlaceholder":"","dataXTextLength":10,"viewDomId":"example-35"})
	</script>
</div>
[More Details](../options/data__x__text__placeholder.html#example-b) | Change suffix for cut of x range text labels to: ``````

### 36. dataYTicks (A)

<div id="example-36">
	<script>
		d3.statosio(file,"name",["mobile"],{"dataYTicks":2,"viewDomId":"example-36"})
	</script>
</div>
[More Details](../options/data__y__ticks.html#example-a) | Change y range ticks to: ```2```

### 37. dataYTicks (B)

<div id="example-37">
	<script>
		d3.statosio(file,"name",["mobile"],{"dataYTicks":20,"viewDomId":"example-37"})
	</script>
</div>
[More Details](../options/data__y__ticks.html#example-b) | Change y range ticks to: ```20```

### 38. dataSortCurrent (A)

<div id="example-38">
	<script>
		d3.statosio(file,"name",["mobile"],{"dataSortCurrent":"values","viewDomId":"example-38"})
	</script>
</div>
[More Details](../options/data__sort__current.html#example-a) | Set sort to: ```values```

### 39. dataSortCurrent (B)

<div id="example-39">
	<script>
		d3.statosio(file,"name",["mobile"],{"dataSortCurrent":"names","viewDomId":"example-39"})
	</script>
</div>
[More Details](../options/data__sort__current.html#example-b) | Set sort to: ```names```

### 40. dataSortByValues (A)

<div id="example-40">
	<script>
		d3.statosio(file,"name",["mobile"],{"dataSortCurrent":"values","dataSortByValues":"ascending","showAverage":false,"viewDomId":"example-40"})
	</script>
</div>
[More Details](../options/data__sort__by__values.html#example-a) | Set sequence to: ```ascending``` and hide average line.

### 41. dataSortByValues (B)

<div id="example-41">
	<script>
		d3.statosio(file,"name",["mobile"],{"dataSortCurrent":"values","dataSortByValues":"decending","viewDomId":"example-41"})
	</script>
</div>
[More Details](../options/data__sort__by__values.html#example-b) | Set sequence to: ```decending```

### 42. dataSortByValues (C)

<div id="example-42">
	<script>
		d3.statosio(file,"name",["mobile"],{"dataSortCurrent":"none","viewDomId":"example-42"})
	</script>
</div>
[More Details](../options/data__sort__by__values.html#example-c) | Set sequence to: ``````

### 43. dataSortByNames (A)

<div id="example-43">
	<script>
		d3.statosio(file,"name",["mobile","desktop"],{"dataSortCurrent":"names","dataSortByNames":"ascending","viewDomId":"example-43"})
	</script>
</div>
[More Details](../options/data__sort__by__names.html#example-a) | Set sequence to: ```ascending```

### 44. dataSortByNames (B)

<div id="example-44">
	<script>
		d3.statosio(file,"name",["mobile","desktop"],{"dataSortCurrent":"names","dataSortByNames":"decending","viewDomId":"example-44"})
	</script>
</div>
[More Details](../options/data__sort__by__names.html#example-b) | Set sequence to: ```decending```

### 45. dataSortSelection (A)

<div id="example-45">
	<script>
		d3.statosio(file,"name",["mobile"],{"dataSortSelection":"start","dataXSelectors":["Spock"],"viewDomId":"example-45"})
	</script>
</div>
[More Details](../options/data__sort__selection.html#example-a) | Set selection to: ```start```

### 46. dataSortSelection (B)

<div id="example-46">
	<script>
		d3.statosio(file,"name",["mobile"],{"dataSortSelection":"end","dataXSelectors":["Spock"],"viewDomId":"example-46"})
	</script>
</div>
[More Details](../options/data__sort__selection.html#example-b) | Set selection to: ```end```

### 47. dataSortSelection (C)

<div id="example-47">
	<script>
		d3.statosio(file,"name",["mobile"],{"dataSortSelection":"none","dataXSelectors":["Spock"],"viewDomId":"example-47"})
	</script>
</div>
[More Details](../options/data__sort__selection.html#example-c) | Set selection to: ```none```

### 48. dataLegendTextSeparater (A)

<div id="example-48">
	<script>
		d3.statosio(file,"name",["mobile","desktop"],{"showLegend":true,"dataLegendTextSeparater":"_","viewDomId":"example-48"})
	</script>
</div>
[More Details](../options/data__legend__text__separater.html#example-a) | Replace character "```_```" to " " in the legend text label

### 49. styleColorAverage (A)

<div id="example-49">
	<script>
		d3.statosio(file,"name",["mobile"],{"styleColorAverage":"purple","viewDomId":"example-49"})
	</script>
</div>
[More Details](../options/style__color__average.html#example-a) | Set average color line to: ```purple```

### 50. styleColorAverage (B)

<div id="example-50">
	<script>
		d3.statosio(file,"name",["mobile"],{"styleColorAverage":"#c1033c","viewDomId":"example-50"})
	</script>
</div>
[More Details](../options/style__color__average.html#example-b) | Set average color line to: ```#c1033c```

### 51. styleColorCanvasBackground (A)

<div id="example-51">
	<script>
		d3.statosio(file,"name",["mobile"],{"styleColorCanvasBackground":"lightgray","viewDomId":"example-51"})
	</script>
</div>
[More Details](../options/style__color__canvas_background.html#example-a) | Set background color to: ```lightgray```

### 52. styleColorCanvasBackground (B)

<div id="example-52">
	<script>
		d3.statosio(file,"name",["mobile"],{"styleColorCanvasBackground":"#fed8b1","viewDomId":"example-52"})
	</script>
</div>
[More Details](../options/style__color__canvas_background.html#example-b) | Set background color to: ```#fed8b1```

### 53. styleColorFont (A)

<div id="example-53">
	<script>
		d3.statosio(file,"name",["mobile"],{"styleColorFont":"red","viewDomId":"example-53"})
	</script>
</div>
[More Details](../options/style__color__font.html#example-a) | Set default font color to: ```red```

### 54. styleColorFont (B)

<div id="example-54">
	<script>
		d3.statosio(file,"name",["mobile"],{"styleColorFont":"#f66504","viewDomId":"example-54"})
	</script>
</div>
[More Details](../options/style__color__font.html#example-b) | Set default font color to: ```#f66504```

### 55. styleColorLegends (A)

<div id="example-55">
	<script>
		d3.statosio(file,"name",["mobile","desktop"],{"styleColorLegends":["yellow","red","green"],"viewDomId":"example-55"})
	</script>
</div>
[More Details](../options/style__color__legends.html#example-a) | Set color legend palette to: ```["yellow", "red", "green"]```

### 56. styleColorLegends (B)

<div id="example-56">
	<script>
		d3.statosio(file,"name",["mobile","desktop"],{"styleColorLegends":["#f59351","#c9504a","#12514c","#2f7872","#a6b797"],"viewDomId":"example-56"})
	</script>
</div>
[More Details](../options/style__color__legends.html#example-b) | 

### 57. styleColorGridline (A)

<div id="example-57">
	<script>
		d3.statosio(file,"name",["mobile"],{"styleColorGridline":"yellow","viewDomId":"example-57"})
	</script>
</div>
[More Details](../options/style__color__gridline.html#example-a) | Set gridline value to: ```yellow```

### 58. styleColorGridline (B)

<div id="example-58">
	<script>
		d3.statosio(file,"name",["mobile"],{"styleColorGridline":"#f59351","viewDomId":"example-58"})
	</script>
</div>
[More Details](../options/style__color__gridline.html#example-b) | Set gridline value to: ```#f59351```

### 59. styleColorSelectorsChart (A)

<div id="example-59">
	<script>
		d3.statosio(file,"name",["mobile","desktop"],{"styleColorSelectorsChart":["yellow","red","green"],"dataXSelectors":["Spock"],"viewDomId":"example-59"})
	</script>
</div>
[More Details](../options/style__color__selectors__chart.html#example-a) | Set palette to: ```["yellow", "red", "green"]```

### 60. styleColorSelectorsChart (B)

<div id="example-60">
	<script>
		d3.statosio(file,"name",["mobile","desktop"],{"styleColorSelectorsChart":["#f59351","#c9504a","#12514c"],"dataXSelectors":["Spock"],"viewDomId":"example-60"})
	</script>
</div>
[More Details](../options/style__color__selectors__chart.html#example-b) | Set palette to: ```["#f59351", "#c9504a", "#12514c"]```

### 61. styleColorSelectorsText (A)

<div id="example-61">
	<script>
		d3.statosio(file,"name",["mobile","desktop"],{"styleColorSelectorsText":["grey","lightgrey"],"dataXSelectors":["Spock"],"viewDomId":"example-61"})
	</script>
</div>
[More Details](../options/style__color__selectors__text.html#example-a) | Set font color of selection and others to: ```["grey", "lightgrey"]```

### 62. styleColorSelectorsText (B)

<div id="example-62">
	<script>
		d3.statosio(file,"name",["mobile","desktop"],{"styleColorSelectorsText":["#f59351","#a6b797"],"dataXSelectors":["Spock"],"viewDomId":"example-62"})
	</script>
</div>
[More Details](../options/style__color__selectors__text.html#example-b) | Set font color of selection and others to: ```["#f59351", "#a6b797"]```

### 63. styleFontSizeText (A)

<div id="example-63">
	<script>
		d3.statosio(file,"name",["mobile"],{"styleFontSizeText":20,"viewDomId":"example-63"})
	</script>
</div>
[More Details](../options/style__font__size__text.html#example-a) | Set default font size to: ```20```

### 64. styleFontSizeText (B)

<div id="example-64">
	<script>
		d3.statosio(file,"name",["mobile"],{"styleFontSizeText":5,"viewDomId":"example-64"})
	</script>
</div>
[More Details](../options/style__font__size__text.html#example-b) | Set default font size to: ```5```

