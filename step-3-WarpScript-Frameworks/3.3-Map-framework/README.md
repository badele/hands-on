# Step-3.3: Framework time: MAP!

The function used allow some small GTS manipulation but WarpScript offers other rich tools for manipulating the GTS. Five frameworks are available and they all have their specific usage and important place in Time-Series analytics: [FILTER](http://www.warp10.io/reference/frameworks/framework-filter/), [BUCKETIZE](http://www.warp10.io/reference/frameworks/framework-bucketize/), [MAP](http://www.warp10.io/reference/frameworks/framework-map/), [REDUCE](http://www.warp10.io/reference/frameworks/framework-reduce/) and [APPLY](http://www.warp10.io/reference/frameworks/framework-apply/). Let's end with the MAP framework.

## The framework

Now it is time to update the values of a set of GTS using the [MAP framework](http://www.warp10.io/reference/frameworks/framework-map/). The MAP framework allows you to apply a function on values of a Geo Time SeriesTM that fall into a sliding window.

## Input parameters

Map takes as input a list of parameters. The first element of this list can be one or several lists of GTS. Then there is a [mapper function](http://www.warp10.io/reference/#framework-mappers). The third and the fourth elements are related to the sliding window, with first an element corresponding to "pre", the width of the sliding window before the value, and in second an element corresponding to "post", the width of the sliding window after the value. The last element corresponds to "occurences" which is the limit of computation of a number. For all elements except the set of GTS and the mapper function a default value 0 can be used, when those elements aren't required.

```
// MAP Framework
[
    SWAP                                // Series list or Singleton
    mapper.                             // Mapper function operator
    0                                   // Pre
    0                                   // Post
    0                                   // Occurence
]
MAP

```

[Empty Test](https://quantum.metrics.ovh.net/#/warpscript//eyJ1cmwiOiJodHRwczovL3dhcnAucGllcnJlemVtYi5vcmcvYXBpL3YwIiwiZmV0Y2hFbmRwb2ludCI6Ii9mZXRjaCIsImhlYWRlck5hbWUiOiJYLVdhcnAxMCJ9)

**Pro tips: A mmapper with the pre, post and occurence parameters at zero is called a single value mapper, meaning that the mapper function will be applied to all points of a series!**

## Hello Exo World step

In previous step we saw how to downsample the data, but what if to get a correct sense we would to compute an approximate trend? Usics basic static, we could try to use a moving average as example. In WarpScript, the map framework can be used to approximate such a computation. For a example we can define a window containing 5 elements before and as many after the current point and compute the mean value.

Let's try it! Try the mapper.mean with a moving window!

```
// MAP Framework
[
                                        // Series list or Singleton
                                        // Mapper function operator
                                        // Pre
                                        // Post
                                        // Occurence
]
MAP

```
[Empty Test](https://quantum.metrics.ovh.net/#/warpscript//eyJ1cmwiOiJodHRwczovL3dhcnAucGllcnJlemVtYi5vcmcvYXBpL3YwIiwiZmV0Y2hFbmRwb2ludCI6Ii9mZXRjaCIsImhlYWRlck5hbWUiOiJYLVdhcnAxMCJ9)

# Lesson summary

[Map/reduce](https://quantum.metrics.ovh.net/#/warpscript/Ly8gU3RvcmluZyB0aGUgdG9rZW4gaW50byBhIHZhcmlhYmxlCkBIRUxMT0VYT1dPUkxEL0dFVFJFQURUT0tFTiAndG9rZW4nIFNUT1JFIAoKLy8gRkVUQ0gKWyAKICAgICR0b2tlbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC8vIEFwcGxpY2F0aW9uIGF1dGhlbnRpY2F0aW9uCiAgICAnc2FwLmZsdXgnICAgICAgICAgICAgICAgICAgICAgICAgICAvLyBzZWxlY3RvciBmb3IgY2xhc3NuYW1lCiAgICB7ICdLRVBMRVJJRCcgJzY1NDE5MjAnIH0gICAgICAgICAgICAvLyBTZWxlY3RvciBmb3IgbGFiZWxzCiAgICAnMjAwOS0wNS0wMlQwMDo1NjoxMC4wMDAwMDBaJyAgICAgICAvLyBTdGFydCBkYXRlCiAgICAnMjAxMy0wNS0xMVQxMjowMjowNi4wMDAwMDBaJyAgICAgICAvLyBFbmQgZGF0ZQpdIApGRVRDSAoKLy8gR2V0IFNpbmdsZXRvbiBzZXJpZXMKMCBHRVQKCi8vCi8vIFRJTUVTUExJVCBibG9jazoKLy8KCi8vIFF1aWVzY2UgcGVyaW9kCjYgaAoKLy8gTWluaW1hbCBudW1iZXJzIG9mIHBvaW50cyBwZXIgc2VyaWVzIAoxMDAKCi8vIExhYmVscyBmb3IgZWFjaCBzcGxpdHRlZCBzZXJpZXMKJ3JlY29yZCcKClRJTUVTUExJVAoKJ3NwbGl0U2VyaWVzJyBTVE9SRQoKLy8KLy8gRklMVEVSIGJsb2NrOgovLwoKLy8gU3RvcmUgYSBsYWJlbHMgbWFwIHNlbGVjdG9yCnsgJ3JlY29yZCcgJ35bMi01XScgfSAnbGFiZWxzU2VsZWN0b3InIFNUT1JFCgovLyBGSUxURVIgRnJhbWV3b3JrClsKICAgICRzcGxpdFNlcmllcyAgICAgICAgICAgICAgICAgICAgLy8gU2VyaWVzIGxpc3Qgb3IgU2luZ2xldG9uCiAgICBbXSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC8vIExhYmVscyB0byBjb21wdXRlIGVxdWl2YWxlbmNlIGNsYXNzCiAgICAkbGFiZWxzU2VsZWN0b3IgICAgICAgICAgICAgICAgIC8vIExhYmVscyBtYXAgZm9yIHNlbGVjdG9yCiAgICBmaWx0ZXIuYnlsYWJlbHMgICAgICAgICAgICAgICAgIC8vIEZpbHRlciBmdW5jdGlvbiBvcGVyYXRvciAKXQpGSUxURVIKCidmaWx0ZXJlZFNlcmllcycgU1RPUkUKCi8vCi8vIEJVQ0tFVElaRSBibG9jazoKLy8KCi8vIEJVQ0tFVElaRSBGcmFtZXdvcmsKWwogICAgJGZpbHRlcmVkU2VyaWVzICAgICAgICAgICAgICAgICAgICAgLy8gU2VyaWVzIGxpc3Qgb3IgU2luZ2xldG9uCiAgICBidWNrZXRpemVyLm1pbiAgICAgICAgICAgICAgICAgICAgICAvLyBCdWNrZXRpemUgZnVuY3Rpb24gb3BlcmF0b3IKICAgIDAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC8vIExhc3RidWNrZXQgCQkJCQogICAgMiBoICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLy8gQnVja2V0c3BhbgogICAgMCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLy8gQnVja2V0Y291bnQKXQpCVUNLRVRJWkUKCididWNrZXRpemVkU2VyaWVzJyBTVE9SRQoKLy8KLy8gTUFQIGJsb2NrOgovLwoKLy8gTUFQIEZyYW1ld29yawpbCiAgICAkYnVja2V0aXplZFNlcmllcyAgICAgICAgICAgICAgICAgICAvLyBTZXJpZXMgbGlzdCBvciBTaW5nbGV0b24KICAgIG1hcHBlci5tZWFuICAgICAgICAgICAgICAgICAgICAgICAgIC8vIE1hcHBlciBmdW5jdGlvbiBvcGVyYXRvcgogICAgNSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLy8gUHJlICAgICAgICAgICAgICAgCiAgICA1ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAvLyBQb3N0CiAgICAwICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAvLyBPY2N1cmVuY2UKXQpNQVA%3D/eyJ1cmwiOiJodHRwczovL3dhcnAucGllcnJlemVtYi5vcmcvYXBpL3YwIiwiZmV0Y2hFbmRwb2ludCI6Ii9mZXRjaCIsImhlYWRlck5hbWUiOiJYLVdhcnAxMCJ9)

# To be continued

Congrats, you reached the end of the framework step! Understanding the help providing by those framework is really important to help a young hunter to complete its quest to retrieve Kepler-11 exoplanet. In the [next step](/step-4-First-Exo-Detection/4.1-Yet-another-framework-APPLY/README.md) we will focus, now that we have all the needed tools, on writing a working exploratory script to discover existing exoplanet for kepler-11!
