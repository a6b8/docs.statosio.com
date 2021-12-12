---
sort: 3
title: 32 Diagrams
---

# 32 Diagrams

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

