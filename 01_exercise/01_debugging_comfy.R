# Origin -----------------------------------------------------------------------
# This example was originally used inJenny Bryan's rstudio::conf(2020) keynote
# Object of type 'closure' is not subsettable,
# https://github.com/jennybc/debugging


# open 01_sourceme to inspect & review code ---------------------------------------
# try file.edit()


# source functions -------------------------------------------------------------
# source in 01_exercise/01_sourceme.R 

# view fruit data --------------------------------------------------------------

# successful execution ---------------------------------------------------------
# confirm function works for berry
fruit_avg(fruit, "berry")

# error on execution -----------------------------------------------------------
# observe error
fruit_avg(fruit, "peach")

# identify location of error ---------------------------------------------------
# try traceback()

# copy and paste traceback results as a comment here to compare with next exercise


# modify options for a richer traceback via rlang ------------------------------

# copy and paste traceback results as a comment here to compare with next exercise


# interactive debugging --------------------------------------------------------
# enter interactive debugger by inserting browser() into the fruit_avg() function
# trigger interactive debugger by executing function

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




