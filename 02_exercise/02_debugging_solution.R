# Origin -----------------------------------------------------------------------
# This example was originally used inJenny Bryan's rstudio::conf(2020) keynote
# Object of type 'closure' is not subsettable,
# https://github.com/jennybc/debugging

# Restart R!

# open sourceme to inspect & review code ---------------------------------------
# the content is essentially the same as 01_exercise, but the code has been re-structured
file.edit("02_exercise/02_sourceme.R")


# source functions -------------------------------------------------------------
# open 01_exercise/01_sourceme.R and click on Source button
# OR
source("02_exercise/02_sourceme.R")


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

# copy and paste traceback results as a comment here to compare with other exercises


# modify options for a richer traceback ----------------------------------------
options(error = rlang::entrace) 
fruit_avg(fruit, "peach")
rlang::last_trace()

# copy and paste traceback results as a comment here to compare with other exercises

# How do the tracebacks look different compared to 01_exercise?

# interactive debugging via IDE ------------------------------------------------
# Restart R
# enter interactive debugger by inserting a breakpoint in 
# the fruit_avg() function in 02_sourceme.R
# re-source file via
debugSource("02_exercise/02_sourceme.R")

# trigger interactive debugger
fruit_avg(fruit, "peach")

# navigate the debugger using the buttons at the top of the console
# be sure to try the "step into" option!

# while in the debugger, explore the objects in your environment
# with ls.str()


# interactive debugging via IDE, again -----------------------------------------
# Remove breakpoint from 02_sourceme.R
# Restart R
# Modify IDE settings to Debug -> On Error -> check Error Inspector
# re-source in the file
source("02_exercise/02_sourceme.R")

# trigger console error inspector
fruit_avg(fruit, "peach")

# explore the "Show Traceback" and "Rerun with Debug" options
# Where does the debugger drop you in?

# Can you determine exactly why the bug is occurring?
# If you have time, try to fix it!


