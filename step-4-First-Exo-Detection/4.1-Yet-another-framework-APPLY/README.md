# Step-4.1: Yet another framework: APPLY!

## The framework 

Yet an other WarpScript framework: [APPLY](http://www.warp10.io/reference/frameworks/framework-apply/)! It's a framework used to compute operation (like add, sub or mask) on multiple set of series. In this tutorial we will no enter in the details of this framework, but notice it exists and can but used to substract two set of series! 

The signature of the [Apply with a sub operator](http://www.warp10.io/reference/frameworks/op_sub/) is described below:

```
[
    $gtsSetMinuend
    $gtsSetSubtrahend
    []
    op.sub
]
APPLY

```

[Empty Test](https://quantum.metrics.ovh.net/#/warpscript//eyJ1cmwiOiJodHRwczovL3dhcnAucGllcnJlemVtYi5vcmcvYXBpL3YwIiwiZmV0Y2hFbmRwb2ludCI6Ii9mZXRjaCIsImhlYWRlck5hbWUiOiJYLVdhcnAxMCJ9)

## Practice

The following example show you a quick demonstration on how to use it with the sub operator. In this example 4 series are first created and put in two diffrent set. 
Then it's up to you, hunter, to compute the difference of the first set series with the ones contained in the second one, according to the sensor label. Please complete the APPLY skeleton below to correctly doing it.


```
[
    NEWGTS "series-1" RENAME 
    { 'sensor' '42' } RELABEL
    10 NaN NaN NaN 46.5 ADDVALUE
    20 NaN NaN NaN  23  ADDVALUE
    NEWGTS "series-2" RENAME 
    { 'sensor' '53' } RELABEL
    10 NaN NaN NaN 46.5 ADDVALUE
    20 NaN NaN NaN  23  ADDVALUE
    30 NaN NaN NaN  42  ADDVALUE
]
'firstResult' STORE

[
  NEWGTS "series-3" RENAME 
  { 'sensor' '42' } RELABEL
  10 NaN NaN NaN  4.5 ADDVALUE
  20 NaN NaN NaN  -19 ADDVALUE
  NEWGTS "series-4" RENAME 
  { 'sensor' '53' } RELABEL
  10 NaN NaN NaN  4.5 ADDVALUE
  15 NaN NaN NaN  0.4 ADDVALUE
  20 NaN NaN NaN  -19 ADDVALUE
]
'secondResult' STORE

[
                                        // Series list or Singleton minuend
                                        // Series list or Singleton subtrahend
                                        // Labels to compute equivalence class
    op.sub                              // Apply function operator
]
APPLY

```

[Empty Test](https://quantum.metrics.ovh.net/#/warpscript//eyJ1cmwiOiJodHRwczovL3dhcnAucGllcnJlemVtYi5vcmcvYXBpL3YwIiwiZmV0Y2hFbmRwb2ludCI6Ii9mZXRjaCIsImhlYWRlck5hbWUiOiJYLVdhcnAxMCJ9)

# Lesson summary

[GTS creation](https://quantum.metrics.ovh.net/#/warpscript/WwogICAgTkVXR1RTICJzZXJpZXMtMSIgUkVOQU1FIAogICAgeyAnc2Vuc29yJyAnNDInIH0gUkVMQUJFTAogICAgMTAgTmFOIE5hTiBOYU4gNDYuNSBBRERWQUxVRQogICAgMjAgTmFOIE5hTiBOYU4gIDIzICBBRERWQUxVRQogICAgTkVXR1RTICJzZXJpZXMtMiIgUkVOQU1FIAogICAgeyAnc2Vuc29yJyAnNTMnIH0gUkVMQUJFTAogICAgMTAgTmFOIE5hTiBOYU4gNDYuNSBBRERWQUxVRQogICAgMjAgTmFOIE5hTiBOYU4gIDIzICBBRERWQUxVRQogICAgMzAgTmFOIE5hTiBOYU4gIDQyICBBRERWQUxVRQpdCidmaXJzdFJlc3VsdCcgU1RPUkUKClsKICBORVdHVFMgInNlcmllcy0zIiBSRU5BTUUgCiAgeyAnc2Vuc29yJyAnNDInIH0gUkVMQUJFTAogIDEwIE5hTiBOYU4gTmFOICA0LjUgQUREVkFMVUUKICAyMCBOYU4gTmFOIE5hTiAgLTE5IEFERFZBTFVFCiAgTkVXR1RTICJzZXJpZXMtNCIgUkVOQU1FIAogIHsgJ3NlbnNvcicgJzUzJyB9IFJFTEFCRUwKICAxMCBOYU4gTmFOIE5hTiAgNC41IEFERFZBTFVFCiAgMTUgTmFOIE5hTiBOYU4gIDAuNCBBRERWQUxVRQogIDIwIE5hTiBOYU4gTmFOICAtMTkgQUREVkFMVUUKXQonc2Vjb25kUmVzdWx0JyBTVE9SRQoKWwogICAgJGZpcnN0UmVzdWx0ICAgICAgICAgICAgICAgICAgICAgICAgLy8gU2VyaWVzIGxpc3Qgb3IgU2luZ2xldG9uIG1pbnVlbmQKICAgICRzZWNvbmRSZXN1bHQgICAgICAgICAgICAgICAgICAgICAgIC8vIFNlcmllcyBsaXN0IG9yIFNpbmdsZXRvbiBzdWJ0cmFoZW5kCiAgICBbICdzZW5zb3InIF0gICAgICAgICAgICAgICAgICAgICAgICAvLyBMYWJlbHMgdG8gY29tcHV0ZSBlcXVpdmFsZW5jZSBjbGFzcwogICAgb3Auc3ViICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLy8gQXBwbHkgZnVuY3Rpb24gb3BlcmF0b3IKXQpBUFBMWQ%3D%3D/eyJ1cmwiOiJodHRwczovL3dhcnAucGllcnJlemVtYi5vcmcvYXBpL3YwIiwiZmV0Y2hFbmRwb2ludCI6Ii9mZXRjaCIsImhlYWRlck5hbWUiOiJYLVdhcnAxMCJ9)

# To be continued

Once you are familiar with this specific operation of the APPLY framework, please continue with the next step, as you initiation as an exoplanet hunter is about to end. As a matter of fact, you now have the knowledge of all the needed tools to start exploring the kepler-11 start to detect it's exoplanet. Let's find together how to process in the [next step](/step-4-First-Exo-Detection/4.2-Compute-the-difference-between-the-lightcurve-and-the-trend/README.md).