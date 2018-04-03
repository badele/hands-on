# Step-2.1: Exploring the available time-series! 

Now that you survive all the WarpScript needed knowlded, we would like to welcome you in our special quest, as an exoplanet hunter!

## FIND

We preloaded our platform with some stars (around 30). Let's observe the series structures and find the one that we want! We are going to use a function called [FIND](http://www.warp10.io/reference/functions/function_FIND/).

But before retrieving any data, we need to access data store in a specific application. To do it with Warp 10, you need to be allowed using a specific cryptographic token. To simplify this process, we stored this token in the platform. You can access it using the following code. HEW stands for HelloExoWorld. 

```
// Load handson-hew token
@HELLOEXOWORLD/GETREADTOKEN
```

Then store it in a variable, for example token. And starting from now, keep this stored token in all the script as you will need it to load data.

```
// Storing the token into a variable
@HELLOEXOWORLD/GETREADTOKEN 'token' STORE 
```

The FIND function finds Geo Time SeriesTM matching some criteria.

The top of the stack must contain a LIST with 3 parameters: a Warp10 token, a classname selector and a MAP of label selectors.

The classname selector is a string which represents an exact match if it starts with an ‘=’, or a regular expression if it starts with ‘~’.

The label selectors are packed in a MAP whose keys are the label names and the values the associated selector. Those selectors can also be exact matches if they start with ‘=’ or a regular expression if they start with ‘~’.

Here a preloaded WarpScript that you can use, find all the GTS available!

```
// Start the find with the token as first parameter
[ $token  ] FIND

```
[Empty Test](https://quantum.metrics.ovh.net/#/warpscript//eyJ1cmwiOiJodHRwczovL3dhcnAucGllcnJlemVtYi5vcmcvYXBpL3YwIiwiZmV0Y2hFbmRwb2ludCI6Ii9mZXRjaCIsImhlYWRlck5hbWUiOiJYLVdhcnAxMCJ9)

The one that we are looking for has a label KEPLERID=6541920, can you see it? Change the FIND to have only one result: sap.flux for Kepler-11!

# Lesson summary

[Get stars](https://quantum.metrics.ovh.net/#/warpscript/Ly8gU3RvcmluZyB0aGUgdG9rZW4gaW50byBhIHZhcmlhYmxlCkBIRUxMT0VYT1dPUkxEL0dFVFJFQURUT0tFTiAndG9rZW4nIFNUT1JFIAoKLy8gU3RhcnQgdGhlIGZpbmQgd2l0aCB0aGUgdG9rZW4gYXMgZmlyc3QgcGFyYW1ldGVyClsgJHRva2VuICd%2BLionIHt9IF0gRklORAoKLy8gU2VsZWN0IG9ubHkgS2VwbGVyLTExIHNlcmllcwpbICR0b2tlbiAnfi4qJyB7ICdLRVBMRVJJRCcgJzY1NDE5MjAnIH0gXSBGSU5E/eyJ1cmwiOiJodHRwczovL3dhcnAucGllcnJlemVtYi5vcmcvYXBpL3YwIiwiZmV0Y2hFbmRwb2ludCI6Ii9mZXRjaCIsImhlYWRlck5hbWUiOiJYLVdhcnAxMCJ9)

# To be continued

During this step you manipulated a sub-set of series extracted of the FITS data of the NASA. Now to really explore this set of data, let's obeserve what the lightcurve for the kepler-11 time series looks like. In the [next step](/step-2-Keplers-Data/2.2-Getting-Kepler-11-raw-data/README.md), you will learn how to extract raw data using Warp 10.
