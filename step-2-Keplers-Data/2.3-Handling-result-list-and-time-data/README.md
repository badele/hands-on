# Step-2.3: Manipulate a Geo Time Series®!

Now that you are used to play with the stack, let's manipulate some data!

## Handling a list

What is the type of the result? You can use [TYPEOF](http://www.warp10.io/reference/functions/function_TYPEOF/) to see it. because it is a single list holding only one element, you can push back the first element by calling 0 [GET](http://www.warp10.io/reference/functions/function_GET/) after the FETCH instruction.

## Handling time

As you may have seen, the data-window is pretty long, and they are drops. Drops are period where they are no data. Let's clean that. There is a function called [TIMESPLIT](http://www.warp10.io/reference/functions/function_TIMESPLIT/) that will be able to help us! As stated by the documentation:

> The TIMESPLIT function takes a GTS or a list of GTS and splits each Geo Time SeriesTM into a list multiple GTS instances, cutting the original GTS when it encounters quiet periods when there are no measurements.

That is perfect! Let´s use it!

The needed parameter are :

* the length of the quiet period (in microseconds)
* the minimum number of values each resulting GTS should have
* the name of the label which will hold the sequence of the resulting GTS (1 being the oldest).

Go ahead and TIMESPLIT the GTS!

**Pro tips: You can use a function called h to easily compute time. For example, putting 1 h into the stack will result with the number of microsecond in a hour in the stack!**

```
[
    $token                              // Application authentication
    'sap.flux'                   // selector for classname
    { 'KEPLERID' '6541920' }                // Selector for labels
    '2009-05-02T00:56:10.000000Z'       // Start date
    '2013-05-11T12:02:06.000000Z'       // End date
] FETCH

//
// TIMESPLIT block:
//

// Quiesce period


// Minimal numbers of points per series


// Labels for each splitted series
'record'


```

[Empty Test](https://quantum.metrics.ovh.net/#/warpscript//eyJ1cmwiOiJodHRwczovL3dhcnAucGllcnJlemVtYi5vcmcvYXBpL3YwIiwiZmV0Y2hFbmRwb2ludCI6Ii9mZXRjaCIsImhlYWRlck5hbWUiOiJYLVdhcnAxMCJ9)

# Lesson summary

[ Splitin series](https://quantum.metrics.ovh.net/#/warpscript/Ly8gU3RvcmluZyB0aGUgdG9rZW4gaW50byBhIHZhcmlhYmxlCkBIRUxMT0VYT1dPUkxEL0dFVFJFQURUT0tFTiAndG9rZW4nIFNUT1JFIAoKLy8gRkVUQ0gKWyAKICAgICR0b2tlbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC8vIEFwcGxpY2F0aW9uIGF1dGhlbnRpY2F0aW9uCiAgICAnc2FwLmZsdXgnICAgICAgICAgICAgICAgICAgICAgICAgICAvLyBzZWxlY3RvciBmb3IgY2xhc3NuYW1lCiAgICB7ICdLRVBMRVJJRCcgJzY1NDE5MjAnIH0gICAgICAgICAgICAvLyBTZWxlY3RvciBmb3IgbGFiZWxzCiAgICAnMjAwOS0wNS0wMlQwMDo1NjoxMC4wMDAwMDBaJyAgICAgICAvLyBTdGFydCBkYXRlCiAgICAnMjAxMy0wNS0xMVQxMjowMjowNi4wMDAwMDBaJyAgICAgICAvLyBFbmQgZGF0ZQpdIApGRVRDSAoKLy8gR2V0IFNpbmdsZXRvbiBzZXJpZXMKMCBHRVQKCi8vCi8vIFRJTUVTUExJVCBibG9jazoKLy8KCi8vIFF1aWVzY2UgcGVyaW9kCjYgaAoKLy8gTWluaW1hbCBudW1iZXJzIG9mIHBvaW50cyBwZXIgc2VyaWVzIAoxMDAKCi8vIExhYmVscyBmb3IgZWFjaCBzcGxpdHRlZCBzZXJpZXMKJ3JlY29yZCcKClRJTUVTUExJVA%3D%3D/eyJ1cmwiOiJodHRwczovL3dhcnAucGllcnJlemVtYi5vcmcvYXBpL3YwIiwiZmV0Y2hFbmRwb2ludCI6Ii9mZXRjaCIsImhlYWRlck5hbWUiOiJYLVdhcnAxMCJ9)

# To be continued

During this step you manipulated a sub-set of series extracted of the FITS data of the NASA. You discovered how to extract raw data from Warp 10 and how to use one of the Time manipulation function WarpScript offers! This is only the beginning of the hunt, there will be more to come in the [next step](/step-3-WarpScript-Frameworks/3.1-Filter-framework/README.md) with all the basic Times Series framework to start an analysis!