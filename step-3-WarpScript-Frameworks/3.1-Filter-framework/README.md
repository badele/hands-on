# Step-3.1: Framework time: FILTER!

The function used allow some small GTS manipulation but WarpScript offers other rich tools for manipulating the GTS. Five frameworks are available and they all have their specific usage and important place in Time-Series analytics: [FILTER](http://www.warp10.io/reference/frameworks/framework-filter/), [BUCKETIZE](http://www.warp10.io/reference/frameworks/framework-bucketize/), [MAP](http://www.warp10.io/reference/frameworks/framework-map/), [REDUCE](http://www.warp10.io/reference/frameworks/framework-reduce/) and [APPLY](http://www.warp10.io/reference/frameworks/framework-apply/). Let's start with the FILTER framework.

## The framework

The first framework we discover in this tutorial is [FILTER](http://www.warp10.io/reference/frameworks/framework-filter/). It provides the tooling to select specific sub-set of Time-series in a list thereof.

Let's resume what we have on the stack: first the kepler-11 GTS are loaded using the [FETCH](http://www.warp10.io/reference/functions/function_FETCH/) function. Then the data are split according to a quiesce period using [TIMESPLIT](http://www.warp10.io/reference/functions/function_TIMESPLIT/).

## Input parameters

The filter function takes a list containing 3 elements as input parameter
```
// Filter framwork
[
    $gts                                // Series list or Singleton
    []                                  // Labels to compute equivalence class
    filter.                             // A selector function 
]
FILTER

```

[Empty Test](https://quantum.metrics.ovh.net/#/warpscript//eyJ1cmwiOiJodHRwczovL3dhcnAucGllcnJlemVtYi5vcmcvYXBpL3YwIiwiZmV0Y2hFbmRwb2ludCI6Ii9mZXRjaCIsImhlYWRlck5hbWUiOiJYLVdhcnAxMCJ9)

## Hello Exo World step

In our data-flow, the goal is now to select only 2 to 3 records of those series to see if it's possible to visualize some drops in those series and if we can start to build a working method to detect exoplanet. You will have to use a Variable as seen in the first step to place the Time-series list in first position of the element list.

The filter function we will use in our case corresponds to [filter.bylabels](http://www.warp10.io/reference/frameworks/filter_bylabels/). This function expects a selector map on top of the stack that have to be specify.
As an example you can try to use the selector labels map specifies in the follozing spec in your filter function.

```
// Store a labels map selector
{ 'record' '~[2-5]' } 'labelsSelector' STORE

// FILTER Framework
[
                                    // Series list or Singleton
                                    // Labels to compute equivalence class
                                    // Labels map for selector
                                    // Filter function operator
]
FILTER

```

[Empty Test](https://quantum.metrics.ovh.net/#/warpscript//eyJ1cmwiOiJodHRwczovL3dhcnAucGllcnJlemVtYi5vcmcvYXBpL3YwIiwiZmV0Y2hFbmRwb2ludCI6Ii9mZXRjaCIsImhlYWRlck5hbWUiOiJYLVdhcnAxMCJ9)

# Lesson summary

[Filtering timeseries](https://quantum.metrics.ovh.net/#/warpscript/Ly8gU3RvcmluZyB0aGUgdG9rZW4gaW50byBhIHZhcmlhYmxlCkBIRUxMT0VYT1dPUkxEL0dFVFJFQURUT0tFTiAndG9rZW4nIFNUT1JFIAoKLy8gRkVUQ0gKWyAKICAgICR0b2tlbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC8vIEFwcGxpY2F0aW9uIGF1dGhlbnRpY2F0aW9uCiAgICAnc2FwLmZsdXgnICAgICAgICAgICAgICAgICAgICAgICAgICAvLyBzZWxlY3RvciBmb3IgY2xhc3NuYW1lCiAgICB7ICdLRVBMRVJJRCcgJzY1NDE5MjAnIH0gICAgICAgICAgICAvLyBTZWxlY3RvciBmb3IgbGFiZWxzCiAgICAnMjAwOS0wNS0wMlQwMDo1NjoxMC4wMDAwMDBaJyAgICAgICAvLyBTdGFydCBkYXRlCiAgICAnMjAxMy0wNS0xMVQxMjowMjowNi4wMDAwMDBaJyAgICAgICAvLyBFbmQgZGF0ZQpdIApGRVRDSAoKLy8gR2V0IFNpbmdsZXRvbiBzZXJpZXMKMCBHRVQKCi8vCi8vIFRJTUVTUExJVCBibG9jazoKLy8KCi8vIFF1aWVzY2UgcGVyaW9kCjYgaAoKLy8gTWluaW1hbCBudW1iZXJzIG9mIHBvaW50cyBwZXIgc2VyaWVzIAoxMDAKCi8vIExhYmVscyBmb3IgZWFjaCBzcGxpdHRlZCBzZXJpZXMKJ3JlY29yZCcKClRJTUVTUExJVAoKJ3NwbGl0U2VyaWVzJyBTVE9SRQoKLy8KLy8gRklMVEVSIGJsb2NrOgovLwoKLy8gU3RvcmUgYSBsYWJlbHMgbWFwIHNlbGVjdG9yCnsgJ3JlY29yZCcgJ35bMi01XScgfSAnbGFiZWxzU2VsZWN0b3InIFNUT1JFCgovLyBGSUxURVIgRnJhbWV3b3JrClsKICAgICRzcGxpdFNlcmllcyAgICAgICAgICAgICAgICAgICAgLy8gU2VyaWVzIGxpc3Qgb3IgU2luZ2xldG9uCiAgICBbXSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC8vIExhYmVscyB0byBjb21wdXRlIGVxdWl2YWxlbmNlIGNsYXNzCiAgICAkbGFiZWxzU2VsZWN0b3IgICAgICAgICAgICAgICAgIC8vIExhYmVscyBtYXAgZm9yIHNlbGVjdG9yCiAgICBmaWx0ZXIuYnlsYWJlbHMgICAgICAgICAgICAgICAgIC8vIEZpbHRlciBmdW5jdGlvbiBvcGVyYXRvciAKXQpGSUxURVI%3D/eyJ1cmwiOiJodHRwczovL3dhcnAucGllcnJlemVtYi5vcmcvYXBpL3YwIiwiZmV0Y2hFbmRwb2ludCI6Ii9mZXRjaCIsImhlYWRlck5hbWUiOiJYLVdhcnAxMCJ9)

# To be continued

As an exoplanet hunter, you may be asking yourself why you should reduced the amount of data you will be working with. Be patient, and remember that taking your time during the first steps will making you win time in the longer run! Stay strong young hunter, more will come in the [next step](/step-3-WarpScript-Frameworks/3.2-Bucketize-framework/README.md) as a framework very usefull for time-series downsampling will be briefly introduced.
