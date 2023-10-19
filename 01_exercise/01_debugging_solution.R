# Origin -----------------------------------------------------------------------
# This example was originally used inJenny Bryan's rstudio::conf(2020) keynote
# Object of type 'closure' is not subsettable,
# https://github.com/jennybc/debugging


# open sourceme to inspect & review code ---------------------------------------
file.edit("01_exercise/01_sourceme.R")


# source functions -------------------------------------------------------------
# open 01_exercise/01_sourceme.R and click on Source button
# OR
source("01_exercise/01_sourceme.R")


# view fruit data --------------------------------------------------------------
fruit


# successful execution ---------------------------------------------------------
# confirm function works for berry
fruit_avg(fruit, "berry")

# error on execution -----------------------------------------------------------
# observe error
fruit_avg(fruit, "peach")

# identify location of error ---------------------------------------------------
traceback()

# copy and paste traceback results as a comment here to compare with next exercise


# modify options for a richer traceback ----------------------------------------
options(error = rlang::entrace) 
fruit_avg(fruit, "peach")
rlang::last_trace()

# copy and paste traceback results as a comment here to compare with next exercise


# interactive debugging --------------------------------------------------------
# enter interactive debugger by inserting `browser()` statement in  
# the fruit_avg() function in 01_sourceme.R
# Restart R, re-source file
source("01_exercise/01_sourceme.R")

# trigger interactive debugger
fruit_avg(fruit, "peach")

# use these commands at the Browse[]> prompt to navigate the debugger

# | command | operation               |
# |---------|-------------------------|
# | `n`     | next statement          |
# | `c`     | continue                |
# | `s`     | step into function call |
# | `f`     | finish loop / function  |
# | `where` | show previous calls     |
# | `Q`     | quit debugger           |
  
# while in the debugger, explore the objects in your environment
# with ls.str()

# Can you determine exactly why the bug is occurring?
# If you have time, try to fix it!


