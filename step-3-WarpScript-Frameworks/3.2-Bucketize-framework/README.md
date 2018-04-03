# Step-3.2: Framework time: BUCKETIZE!

The function used allow some small GTS manipulation but WarpScript offers other rich tools for manipulating the GTS. Five frameworks are available and they all have their specific usage and important place in Time-Series analytics: [FILTER](http://www.warp10.io/reference/frameworks/framework-filter/), [BUCKETIZE](http://www.warp10.io/reference/frameworks/framework-bucketize/), [MAP](http://www.warp10.io/reference/frameworks/framework-map/), [REDUCE](http://www.warp10.io/reference/frameworks/framework-reduce/) and [APPLY](http://www.warp10.io/reference/frameworks/framework-apply/). Let's continue with the BUCKETIZE framework.

## The framework

In this tutorial we will also discover the [BUCKETIZE framework](http://www.warp10.io/reference/frameworks/framework-bucketize/). It provides the tooling for putting the data of a geo time serie into regularly spaced buckets. A bucket corresponds to a time interval.
We will use this bucket to downsample our data, let's give it a try!

## Input parameters

The BUCKETIZE framework takes a list of elements as parameter. This list contains one or several GTS list, a [bucketizer function](http://www.warp10.io/reference/#framework-bucketizers), a lastbucket that specify when start the last bucket (0 mean this will be computed automatically), a bucketcount which is the duration of the bucket (if 0 WarpScript will compute it), and finally a bucketcount which is the number of buckets to compute (if 0 WarpScript will compute it).

**Pro tips: In order to get a correct number of buckets either Bucketspan or Bucketcount have to be specified!**

**Pro tips 2: Bucketcount indicate the number of bucket to keep starting from the last bucket computed when Bucketspan is also set!**

```
// BUCKETIZE Framework
[
    SWAP                                // Series list or Singleton
    bucketizer.                         // Bucketize function operator
    0                                   // Lastbucket
    1 d                                 // Bucketspan
    0                                   // Bucketcount
]
BUCKETIZE

```

[Empty Test](https://quantum.metrics.ovh.net/#/warpscript//eyJ1cmwiOiJodHRwczovL3dhcnAucGllcnJlemVtYi5vcmcvYXBpL3YwIiwiZmV0Y2hFbmRwb2ludCI6Ii9mZXRjaCIsImhlYWRlck5hbWUiOiJYLVdhcnAxMCJ9)

## Hello Exo World step

Only a single amount of series were kept in our previous step, it's already possible to observe some drops in the data. Now we would like to write a script automasing the detection of those drops. But first, to gain some data readibilty, a downsampling step is included. In our case we are intersted in a downsampling conserving the minimal point of each generated bucket for each series.
Let's do it! Try the bucketizer.min with a bucketize window of 2 h.

```
// BUCKETIZE Framework
[
                                        // Series list or Singleton
                                        // Bucketize function operator
                                        // Lastbucket
                                        // Bucketspan
                                        // Bucketcount
]
BUCKETIZE

```

[Empty Test](https://quantum.metrics.ovh.net/#/warpscript//eyJ1cmwiOiJodHRwczovL3dhcnAucGllcnJlemVtYi5vcmcvYXBpL3YwIiwiZmV0Y2hFbmRwb2ludCI6Ii9mZXRjaCIsImhlYWRlck5hbWUiOiJYLVdhcnAxMCJ9)

# Summary Lesson

[Buketsizing](https://quantum.metrics.ovh.net/#/warpscript/Ly8gU3RvcmluZyB0aGUgdG9rZW4gaW50byBhIHZhcmlhYmxlCkBIRUxMT0VYT1dPUkxEL0dFVFJFQURUT0tFTiAndG9rZW4nIFNUT1JFIAoKLy8gRkVUQ0gKWyAKICAgICR0b2tlbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC8vIEFwcGxpY2F0aW9uIGF1dGhlbnRpY2F0aW9uCiAgICAnc2FwLmZsdXgnICAgICAgICAgICAgICAgICAgICAgICAgICAvLyBzZWxlY3RvciBmb3IgY2xhc3NuYW1lCiAgICB7ICdLRVBMRVJJRCcgJzY1NDE5MjAnIH0gICAgICAgICAgICAvLyBTZWxlY3RvciBmb3IgbGFiZWxzCiAgICAnMjAwOS0wNS0wMlQwMDo1NjoxMC4wMDAwMDBaJyAgICAgICAvLyBTdGFydCBkYXRlCiAgICAnMjAxMy0wNS0xMVQxMjowMjowNi4wMDAwMDBaJyAgICAgICAvLyBFbmQgZGF0ZQpdIApGRVRDSAoKLy8gR2V0IFNpbmdsZXRvbiBzZXJpZXMKMCBHRVQKCi8vCi8vIFRJTUVTUExJVCBibG9jazoKLy8KCi8vIFF1aWVzY2UgcGVyaW9kCjYgaAoKLy8gTWluaW1hbCBudW1iZXJzIG9mIHBvaW50cyBwZXIgc2VyaWVzIAoxMDAKCi8vIExhYmVscyBmb3IgZWFjaCBzcGxpdHRlZCBzZXJpZXMKJ3JlY29yZCcKClRJTUVTUExJVAoKJ3NwbGl0U2VyaWVzJyBTVE9SRQoKLy8KLy8gRklMVEVSIGJsb2NrOgovLwoKLy8gU3RvcmUgYSBsYWJlbHMgbWFwIHNlbGVjdG9yCnsgJ3JlY29yZCcgJ35bMi01XScgfSAnbGFiZWxzU2VsZWN0b3InIFNUT1JFCgovLyBGSUxURVIgRnJhbWV3b3JrClsKICAgICRzcGxpdFNlcmllcyAgICAgICAgICAgICAgICAgICAgLy8gU2VyaWVzIGxpc3Qgb3IgU2luZ2xldG9uCiAgICBbXSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC8vIExhYmVscyB0byBjb21wdXRlIGVxdWl2YWxlbmNlIGNsYXNzCiAgICAkbGFiZWxzU2VsZWN0b3IgICAgICAgICAgICAgICAgIC8vIExhYmVscyBtYXAgZm9yIHNlbGVjdG9yCiAgICBmaWx0ZXIuYnlsYWJlbHMgICAgICAgICAgICAgICAgIC8vIEZpbHRlciBmdW5jdGlvbiBvcGVyYXRvciAKXQpGSUxURVIKCidmaWx0ZXJlZFNlcmllcycgU1RPUkUKCi8vCi8vIEJVQ0tFVElaRSBibG9jazoKLy8KCi8vIEJVQ0tFVElaRSBGcmFtZXdvcmsKWwogICAgJGZpbHRlcmVkU2VyaWVzICAgICAgICAgICAgICAgICAgICAgLy8gU2VyaWVzIGxpc3Qgb3IgU2luZ2xldG9uCiAgICBidWNrZXRpemVyLm1pbiAgICAgICAgICAgICAgICAgICAgICAvLyBCdWNrZXRpemUgZnVuY3Rpb24gb3BlcmF0b3IKICAgIDAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC8vIExhc3RidWNrZXQgCQkJCQogICAgMiBoICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLy8gQnVja2V0c3BhbgogICAgMCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLy8gQnVja2V0Y291bnQKXQpCVUNLRVRJWkU%3D/eyJ1cmwiOiJodHRwczovL3dhcnAucGllcnJlemVtYi5vcmcvYXBpL3YwIiwiZmV0Y2hFbmRwb2ludCI6Ii9mZXRjaCIsImhlYWRlck5hbWUiOiJYLVdhcnAxMCJ9)

# To be continued

It look's simple as first look, but truts us it isn't. When you will be working on complex time-series analytics, keep in mind this framework and try to be familiar with it! You will quickly see how it will improves your exoplanet discovery quest! In the [next step](/step-3-WarpScript-Frameworks/3.3-Map-framework/README.md), we are guiding you in the usage of an other usefull framework: MAP or how to apply the same function on all data-point of a set of time-series.
