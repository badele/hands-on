# Step-1.2: Introducing WarpScript Variables!

## Variables

As any other programming language, WarpScript implements the Variables concept. In WarpScript you can save a specific stack element in a variable (java pointer). This is done using the function [STORE](http://www.warp10.io/reference/functions/function_STORE/). 

This function expects two elements on the stack : 
- A stack element to save
- A variable name

Then to push back the element on the stack, write the variable name **precede of a $**.

```
// counter exemple
10 20 40 80 + + +
'totalcounter' STORE
"The totalcounter: " 
$totalcounter
TOSTRING
+
```

[Test](https://quantum.metrics.ovh.net/#/warpscript/MTAgMjAgNDAgODAgKyArICsKJ3RvdGFsY291bnRlcicgU1RPUkUKIlRoZSB0b3RhbGNvdW50ZXI6ICIgCiR0b3RhbGNvdW50ZXIKVE9TVFJJTkcKKw%3D%3D/eyJ1cmwiOiJodHRwczovL3dhcnAucGllcnJlemVtYi5vcmcvYXBpL3YwIiwiZmV0Y2hFbmRwb2ludCI6Ii9mZXRjaCIsImhlYWRlck5hbWUiOiJYLVdhcnAxMCJ9)

Let's try it, save the following string in a variable and then push it back several time on the stack!

```
// A WarpScript string
'Hello World!'

// Save this string in variable


// Play with the saved variable

```

[Empty Test](https://quantum.metrics.ovh.net/#/warpscript//eyJ1cmwiOiJodHRwczovL3dhcnAucGllcnJlemVtYi5vcmcvYXBpL3YwIiwiZmV0Y2hFbmRwb2ludCI6Ii9mZXRjaCIsImhlYWRlck5hbWUiOiJYLVdhcnAxMCJ9)

## Get a read token

Security in Warp10 instance are handled with crypto tokens. They can be pretty long, so to ease your workflow, we stored it in the platform! You can push the token into the stack using this:

```
@HELLOEXOWORLD/GETREADTOKEN
```

You can store it in a variable if you want.

# Lesson summary

- [Store value](https://quantum.metrics.ovh.net/#/warpscript/MTAgMjAgNDAgODAgKyArICsKJ3RvdGFsY291bnRlcicgU1RPUkUKIlRoZSB0b3RhbGNvdW50ZXI6ICIgCiR0b3RhbGNvdW50ZXIKVE9TVFJJTkcKKw%3D%3D/eyJ1cmwiOiJodHRwczovL3dhcnAucGllcnJlemVtYi5vcmcvYXBpL3YwIiwiZmV0Y2hFbmRwb2ludCI6Ii9mZXRjaCIsImhlYWRlck5hbWUiOiJYLVdhcnAxMCJ9)

- [Get toket](https://quantum.metrics.ovh.net/#/warpscript/QEhFTExPRVhPV09STEQvR0VUUkVBRFRPS0VO/eyJ1cmwiOiJodHRwczovL3dhcnAucGllcnJlemVtYi5vcmcvYXBpL3YwIiwiZmV0Y2hFbmRwb2ludCI6Ii9mZXRjaCIsImhlYWRlck5hbWUiOiJYLVdhcnAxMCJ9)

# To be continued

Great job! Let's continue with some WarpScript list manipulation in the [next step](/step-1-WarpScript/1.3-Manipulate-a-data-list/README.md).