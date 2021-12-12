---
sort: 4
title: 16 Diagrams
---

# 16 Diagrams

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

