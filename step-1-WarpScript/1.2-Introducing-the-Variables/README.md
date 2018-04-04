# Step-1.2: Introducing WarpScript Variables!

## Variables

As any other programming language, WarpScript implements the Variables concept. In WarpScript you can save a specific stack element in a variable (java pointer). This is done using the function [STORE](http://www.warp10.io/reference/functions/function_STORE/). 

This function expects two elements on the stack : 
- A stack element to save
- A variable name

Then to push back the element on the stack, write the variable name **precede of a $**.

[//]: # (CODEBEGIN|store.mc2)
[//]: # (CODEEND|store.mc2)

[//]: # (LINKBEGIN|store.mc2|Test store)
[//]: # (LINKEND|store.mc2)

Let's try it, save the following string in a variable and then push it back several time on the stack!

[//]: # (CODEBEGIN|exercise.mc2)
[//]: # (CODEEND|exercise.mc2)

[//]: # (LINKBEGIN|exercise.mc2|Exercise)
[//]: # (LINKEND|exercise.mc2)

## Get a read token

Security in Warp10 instance are handled with crypto tokens. They can be pretty long, so to ease your workflow, we stored it in the platform! You can push the token into the stack using this:

[//]: # (CODEBEGIN|token.mc2)
[//]: # (CODEEND|token.mc2)

[//]: # (LINKBEGIN|token.mc2|Token)
[//]: # (LINKEND|token.mc2)


You can store it in a variable if you want.

# Lesson summary

[//]: # (SUMMARYBEGIN|store.mc2|Store value)
[//]: # (SUMMARYEND|store.mc2)

[//]: # (SUMMARYBEGIN|token.mc2|Get token)
[//]: # (SUMMARYEND|token.mc2)

[//]: # (SUMMARYBEGIN|solutions.mc2|Solutions)
[//]: # (SUMMARYEND|solutions.mc2)


# To be continued

Great job! Let's continue with some WarpScript list manipulation in the [next step](/step-1-WarpScript/1.3-Manipulate-a-data-list/README.md).