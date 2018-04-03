# Step-4.2: Let's compute the difference!

Congrats young hunter in reaching this step! Here you will learn how to use all the knowledge gain in previous step to build your first script to search for exoplanet!
The process is similar to the previous step. Start with the script resuming the data loading, the record split (according to time), the filtering and the downsampling.

```
// Storing the token into a variable
'abcd' 'token' STORE 

// FETCH
[ 
    $token                              // Application authentication
    'sap.flux'                   // selector for classname
    { 'KEPLERID' '6541920' }                // Selector for labels
    '2009-05-02T00:56:10.000000Z'       // Start date
    '2013-05-11T12:02:06.000000Z'       // End date
] 
FETCH

// Get Singleton series
0 GET

//
// TIMESPLIT block:
//

// Quiesce period
6 h

// Minimal numbers of points per series 
100

// Labels for each splitted series
'record'

TIMESPLIT

//
// FILTER block:
//

// Store a labels map selector
{ 'record' '~[2-5]' } 'labelsSelector' STORE

// FILTER Framework
[
    SWAP                            // Series list or Singleton
    []                              // Labels to compute equivalence class
    $labelsSelector                 // Labels map for selector
    filter.bylabels                 // Filter function operator 
]
FILTER

//
// BUCKETIZE block:
//

// BUCKETIZE Framework
[
    SWAP                                // Series list or Singleton
    bucketizer.min                      // Bucketize function operator
    0                                   // Lastbucket
    2 h                                 // Bucketspan
    0                                   // Bucketcount
]
BUCKETIZE
```

[Empty Test](https://quantum.metrics.ovh.net/#/warpscript//eyJ1cmwiOiJodHRwczovL3dhcnAucGllcnJlemVtYi5vcmcvYXBpL3YwIiwiZmV0Y2hFbmRwb2ludCI6Ii9mZXRjaCIsImhlYWRlck5hbWUiOiJYLVdhcnAxMCJ9)

Starting from here, use the [APPLY](http://www.warp10.io/reference/frameworks/framework-apply/) framework to compute the [difference]((http://www.warp10.io/reference/frameworks/op_sub/)) between the originial series and the series trend (computing using an average mean for example). Feel free to search for a script optimizing the drop detection!

# Lesson summary

[Compute difference](https://quantum.metrics.ovh.net/#/warpscript/Ly8gU3RvcmluZyB0aGUgdG9rZW4gaW50byBhIHZhcmlhYmxlCkBIRUxMT0VYT1dPUkxEL0dFVFJFQURUT0tFTiAndG9rZW4nIFNUT1JFIAoKLy8gRkVUQ0gKWyAKICAgICR0b2tlbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC8vIEFwcGxpY2F0aW9uIGF1dGhlbnRpY2F0aW9uCiAgICAnc2FwLmZsdXgnICAgICAgICAgICAgICAgICAgICAgICAgICAvLyBzZWxlY3RvciBmb3IgY2xhc3NuYW1lCiAgICB7ICdLRVBMRVJJRCcgJzY1NDE5MjAnIH0gICAgICAgICAgICAvLyBTZWxlY3RvciBmb3IgbGFiZWxzCiAgICAnMjAwOS0wNS0wMlQwMDo1NjoxMC4wMDAwMDBaJyAgICAgICAvLyBTdGFydCBkYXRlCiAgICAnMjAxMy0wNS0xMVQxMjowMjowNi4wMDAwMDBaJyAgICAgICAvLyBFbmQgZGF0ZQpdIApGRVRDSAoKLy8gR2V0IFNpbmdsZXRvbiBzZXJpZXMKMCBHRVQKCi8vCi8vIFRJTUVTUExJVCBibG9jazoKLy8KCi8vIFF1aWVzY2UgcGVyaW9kCjYgaAoKLy8gTWluaW1hbCBudW1iZXJzIG9mIHBvaW50cyBwZXIgc2VyaWVzIAoxMDAKCi8vIExhYmVscyBmb3IgZWFjaCBzcGxpdHRlZCBzZXJpZXMKJ3JlY29yZCcKClRJTUVTUExJVAoKJ3NwbGl0U2VyaWVzJyBTVE9SRQoKLy8KLy8gRklMVEVSIGJsb2NrOgovLwoKLy8gU3RvcmUgYSBsYWJlbHMgbWFwIHNlbGVjdG9yCnsgJ3JlY29yZCcgJ35bMi01XScgfSAnbGFiZWxzU2VsZWN0b3InIFNUT1JFCgovLyBGSUxURVIgRnJhbWV3b3JrClsKICAgICRzcGxpdFNlcmllcyAgICAgICAgICAgICAgICAgICAgLy8gU2VyaWVzIGxpc3Qgb3IgU2luZ2xldG9uCiAgICBbXSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC8vIExhYmVscyB0byBjb21wdXRlIGVxdWl2YWxlbmNlIGNsYXNzCiAgICAkbGFiZWxzU2VsZWN0b3IgICAgICAgICAgICAgICAgIC8vIExhYmVscyBtYXAgZm9yIHNlbGVjdG9yCiAgICBmaWx0ZXIuYnlsYWJlbHMgICAgICAgICAgICAgICAgIC8vIEZpbHRlciBmdW5jdGlvbiBvcGVyYXRvciAKXQpGSUxURVIKCidmaWx0ZXJlZFNlcmllcycgU1RPUkUKCi8vCi8vIEJVQ0tFVElaRSBibG9jazoKLy8KCi8vIEJVQ0tFVElaRSBGcmFtZXdvcmsKWwogICAgJGZpbHRlcmVkU2VyaWVzICAgICAgICAgICAgICAgICAgICAgLy8gU2VyaWVzIGxpc3Qgb3IgU2luZ2xldG9uCiAgICBidWNrZXRpemVyLm1pbiAgICAgICAgICAgICAgICAgICAgICAvLyBCdWNrZXRpemUgZnVuY3Rpb24gb3BlcmF0b3IKICAgIDAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC8vIExhc3RidWNrZXQgCQkJCQogICAgMiBoICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLy8gQnVja2V0c3BhbgogICAgMCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLy8gQnVja2V0Y291bnQKXQpCVUNLRVRJWkUKCididWNrZXRpemVkU2VyaWVzJyBTVE9SRQoKLy8KLy8gQVBQTFkgYmxvY2s6Ci8vCgpbCiAgICAkYnVja2V0aXplZFNlcmllcyAgICAgICAgICAgICAgICAgICAgLy8gU2VyaWVzIGxpc3Qgb3Igc2luZ2xldG9uIG1pbnVlbmQKCiAgICAvLwogICAgLy8gTUFQIGJsb2NrOiBDb21wdXRlIG1vdmluZyBtZWFuIAogICAgLy8KCiAgICBbCiAgICAgICAgJGJ1Y2tldGl6ZWRTZXJpZXMgICAgICAgICAgICAgICAvLyBTZXJpZXMgbGlzdCBvciBTaW5nbGV0b24KICAgICAgICBtYXBwZXIubWVhbiAgICAgICAgICAgICAgICAgICAgIC8vIE1hcHBlciBmdW5jdGlvbiBvcGVyYXRvcgogICAgICAgIDUgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLy8gUHJlCiAgICAgICAgNSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAvLyBQb3N0CiAgICAgICAgMCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAvLyBPY2N1cmVuY2VzCiAgICBdCiAgICBNQVAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAvLyBTZXJpZXMgbGlzdCBvciBzaW5nbGV0b24gc3VidHJhaGVuZAoKICAgIFsgJ3JlY29yZCcgXSAgICAgICAgICAgICAgICAgICAgICAgIC8vIExhYmVscyB0byBjb21wdXRlIGVxdWl2YWxlbmNlIGNsYXNzCiAgICBvcC5zdWIgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAvLyBBcHBseSBmdW5jdGlvbiBvcGVyYXRvcgpdCkFQUExZ/eyJ1cmwiOiJodHRwczovL3dhcnAucGllcnJlemVtYi5vcmcvYXBpL3YwIiwiZmV0Y2hFbmRwb2ludCI6Ii9mZXRjaCIsImhlYWRlck5hbWUiOiJYLVdhcnAxMCJ9)

# To be continued

Well done young hunter, let's continue together on the [last step](/step-4-First-Exo-Detection/4.3-Threshold-test-and-display/README.md) of this stage to learn how to isolate a minus threshold and build a nice output!