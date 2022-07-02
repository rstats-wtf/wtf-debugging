# Origin -----------------------------------------------------------------------
# This example was originally used inJenny Bryan's rstudio::conf(2020) keynote
# Object of type 'closure' is not subsettable,
# https://github.com/jennybc/debugging

# Restart R!

# install the wtfdbg package ---------------------------------------------------
# the content is essentially the same as 02_exercise, but now the code is no 
# longer yours!
# install.packages("devtools")
devtools::install_github("rstats-wtf/wtfdbg")


# attach package ---------------------------------------------------------------


# view fruit data --------------------------------------------------------------

# successful execution ---------------------------------------------------------
# confirm function works for berry
fruit_avg(fruit, "berry")

# error on execution -----------------------------------------------------------
# observe error
fruit_avg(fruit, "peach")

# identify location of error via traceback -------------------------------------


# copy and paste traceback results as a comment here to compare with other exercises


# modify options for a richer traceback via rlang ------------------------------

# copy and paste traceback results as a comment here to compare with other exercises


# How do the tracebacks look different compared to 02_exercise?


# interactive debugging via debugonce() ----------------------------------------
# set interactive debugger 

# trigger interactive debugger


# navigate the debugger using the buttons at the top of the console
# be sure to try the "step into" option!

# while in the debugger, explore the objects in your environment
# with ls.str()


# interactive debugging via recover error option--------------------------------
# options(? = ?)

# trigger recover

# explore the frames

# reset options



# interactive debugging via trace() --------------------------------------------

# investigate the function body with as.list() + body()

# identify a function step to enter debugger


# insert browser statement at specified step

# trigger trace

# try ls.str() to get your bearings 
# and s, s, s, to keep stepping through functions

# cancel tracing


# Can you determine exactly why the bug is occurring?
# If you have time, try to fix it!


