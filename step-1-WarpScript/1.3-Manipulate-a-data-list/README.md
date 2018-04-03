# Step-1.3: Manipulate a WarpScript List!

## Structure and function

In WarpScript hundreds of functions are available, you can access the documentation [here](http://www.warp10.io/reference/).
In WarpScript, it's possible to build structure as [List or Map](http://www.warp10.io/reference/#functions-lists-maps).
The structure to build a List in WarpScript is as followed. First put a marker to open a list, then the elements to add. 

```
// Warp10 List operations => http://www.warp10.io/reference/reference/#functions-lists-maps

[ 'Monday' 'Tuesday' 'Wednesday' 'Thursday' 'Friday' ]
[ 'Saturday' 'Sunday' ]
APPEND
LSORT

```

[Test](https://quantum.metrics.ovh.net/#/warpscript/Ly8gV2FycDEwIExpc3Qgb3BlcmF0aW9ucyA9PiBodHRwOi8vd3d3LndhcnAxMC5pby9yZWZlcmVuY2UvcmVmZXJlbmNlLyNmdW5jdGlvbnMtbGlzdHMtbWFwcwoKWyAnTW9uZGF5JyAnVHVlc2RheScgJ1dlZG5lc2RheScgJ1RodXJzZGF5JyAnRnJpZGF5JyBdClsgJ1NhdHVyZGF5JyAnU3VuZGF5JyBdCkFQUEVORApMU09SVA%3D%3D/eyJ1cmwiOiJodHRwczovL3dhcnAucGllcnJlemVtYi5vcmcvYXBpL3YwIiwiZmV0Y2hFbmRwb2ludCI6Ii9mZXRjaCIsImhlYWRlck5hbWUiOiJYLVdhcnAxMCJ9)

Let's play with it, here's the squeleton:

```
// Build a list containing values 1 and 3 


// Add the element 2


// Sort the list


// Reverse it
```

[Empty Test](https://quantum.metrics.ovh.net/#/warpscript//eyJ1cmwiOiJodHRwczovL3dhcnAucGllcnJlemVtYi5vcmcvYXBpL3YwIiwiZmV0Y2hFbmRwb2ludCI6Ii9mZXRjaCIsImhlYWRlck5hbWUiOiJYLVdhcnAxMCJ9)


 build a new list containing two elements: 1 and 3. Then add the elements 2 using the operator [+](http://www.warp10.io/reference/functions/function_ADD/) on this list. Now to sort this list, apply the function [LSORT](http://www.warp10.io/reference/functions/function_LSORT/) on it. This will sort the list, which is on top of stack, in a ascending order and let as a result this list on top of the stack. To sort the list in a descending order, apply the [REVERSE](http://www.warp10.io/reference/functions/function_REVERSE/) function on this list.

# Lesson summary

- [List manipulations](https://quantum.metrics.ovh.net/#/warpscript/Ly8gV2FycDEwIExpc3Qgb3BlcmF0aW9ucyA9PiBodHRwOi8vd3d3LndhcnAxMC5pby9yZWZlcmVuY2UvcmVmZXJlbmNlLyNmdW5jdGlvbnMtbGlzdHMtbWFwcwoKWyAnTW9uZGF5JyAnVHVlc2RheScgJ1dlZG5lc2RheScgJ1RodXJzZGF5JyAnRnJpZGF5JyBdClsgJ1NhdHVyZGF5JyAnU3VuZGF5JyBdCkFQUEVORApMU09SVA%3D%3D/eyJ1cmwiOiJodHRwczovL3dhcnAucGllcnJlemVtYi5vcmcvYXBpL3YwIiwiZmV0Y2hFbmRwb2ludCI6Ii9mZXRjaCIsImhlYWRlck5hbWUiOiJYLVdhcnAxMCJ9)

# To be continued

Great job! You now have all the basic WarpScript knowlegde to get started with the analyse of the recorded Nasa Time-series! To start, continue with our second step [here](/step-2-Keplers-Data/2.1-Exploring-known-time-series/README.md).