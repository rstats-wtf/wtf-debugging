# Origin -----------------------------------------------------------------------
# This example was originally used inJenny Bryan's rstudio::conf(2020) keynote
# Object of type 'closure' is not subsettable,
# https://github.com/jennybc/debugging

# Restart R!

# open 02_sourceme to inspect & review code ---------------------------------------
# the content is essentially the same as 01_exercise, but the code has been re-structured
# try file.edit()


# source functions -------------------------------------------------------------
# source in 02_exercise/02_sourceme.R 

# view fruit data --------------------------------------------------------------


# successful execution ---------------------------------------------------------
# confirm function works for berry
fruit_avg(fruit, "berry")

# error on execution -----------------------------------------------------------
# observe error
fruit_avg(fruit, "peach")

# identify location of error via traceback -------------------------------------
# try traceback()

# copy and paste traceback results as a comment here to compare with other exercises


# modify options for a richer traceback via rlang ------------------------------


# copy and paste traceback results as a comment here to compare with other exercises

# How do the tracebacks look different compared to 01_exercise?

# interactive debugging via IDE ------------------------------------------------
# Restart R
# enter interactive debugger by inserting a breakpoint in 
# the fruit_avg() function in 02_sourceme.R
# re-source file 
# trigger interactive debugger by executing the function

# navigate the debugger using the buttons at the top of the console
# be sure to try the "step into" option!

# while in the debugger, explore the objects in your environment
# with ls.str()


# interactive debugging via IDE, again -----------------------------------------
# Remove breakpoint from 02_sourceme.R
# Restart R
# Modify IDE settings to Debug -> On Error -> ??
# re-source in the file

# trigger console error inspector by executing the function

# explore the "Show Traceback" and "Rerun with Debug" options
# Where does the debugger drop you in?

# Can you determine exactly why the bug is occurring?
# If you have time, try to fix it!


