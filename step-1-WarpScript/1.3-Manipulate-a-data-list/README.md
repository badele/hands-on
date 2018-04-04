# Step-1.3: Manipulate a WarpScript List!

## Structure and function

In WarpScript hundreds of functions are available, you can access the documentation [here](http://www.warp10.io/reference/).
In WarpScript, it's possible to build structure as [List or Map](http://www.warp10.io/reference/#functions-lists-maps).
The structure to build a List in WarpScript is as followed. First put a marker to open a list, then the elements to add. 

[//]: # (CODEBEGIN|list.mc2)
[//]: # (CODEEND|list.mc2)

[//]: # (LINKBEGIN|list.mc2|List manipulation)
[//]: # (LINKEND|list.mc2)

Let's play with it, here's the squeleton:

[//]: # (CODEBEGIN|exercise.mc2)
[//]: # (CODEEND|exercise.mc2)

[//]: # (LINKBEGIN|exercise.mc2|Exercise)
[//]: # (LINKEND|exercise.mc2)


 build a new list containing two elements: 1 and 3. Then add the elements 2 using the operator [+](http://www.warp10.io/reference/functions/function_ADD/) on this list. Now to sort this list, apply the function [LSORT](http://www.warp10.io/reference/functions/function_LSORT/) on it. This will sort the list, which is on top of stack, in a ascending order and let as a result this list on top of the stack. To sort the list in a descending order, apply the [REVERSE](http://www.warp10.io/reference/functions/function_REVERSE/) function on this list.

# Lesson summary

[//]: # (SUMMARYBEGIN|list.mc2|List manipulation)
[//]: # (SUMMARYEND|list.mc2)

[//]: # (SUMMARYBEGIN|solutions.mc2|Solutions)
[//]: # (SUMMARYEND|solutions.mc2)

# To be continued

Great job! You now have all the basic WarpScript knowlegde to get started with the analyse of the recorded Nasa Time-series! To start, continue with our second step [here](/step-2-Keplers-Data/2.1-Exploring-known-time-series/README.md).