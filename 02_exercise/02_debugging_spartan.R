# Origin -----------------------------------------------------------------------
# This example was originally used inJenny Bryan's rstudio::conf(2020) keynote
# Object of type 'closure' is not subsettable,
# https://github.com/jennybc/debugging

# Restart R!

# open 02_sourceme to inspect & review code ---------------------------------------
# the content is essentially the same as 01_exercise, but the code has been re-structured



# source functions -------------------------------------------------------------
# source in 02_exercise/02_sourceme.R 

# view fruit data --------------------------------------------------------------


# successful execution ---------------------------------------------------------
# confirm function works for berry
fruit_avg(fruit, "berry")

# error on execution -----------------------------------------------------------
# observe error
fruit_avg(fruit, "peach")

# identify location of error ---------------------------------------------------

# copy and paste traceback results as a comment here to compare with other exercises


# modify options for a richer traceback ----------------------------------------

# copy and paste traceback results as a comment here to compare with other exercises

# How do the tracebacks look different compared to 01_exercise?

# interactive debugging via IDE ------------------------------------------------
# Restart R
# enter interactive debugger by inserting a breakpoint in 
# the fruit_avg() function in 02_sourceme.R




# interactive debugging via IDE, again -----------------------------------------
# Remove breakpoint from 02_sourceme.R
# Restart R
# Modify IDE settings to Debug -> On Error -> ??

# explore the "Show Traceback" and "Rerun with Debug" options
# Where does the debugger drop you in?


# Can you determine exactly why the bug is occurring?
# If you have time, try to fix it!
