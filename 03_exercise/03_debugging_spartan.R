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

# identify location of error ---------------------------------------------------


# copy and paste traceback results as a comment here to compare with other exercises


# modify options for a richer traceback ----------------------------------------

# copy and paste traceback results as a comment here to compare with other exercises


# How do the tracebacks look different compared to 02_exercise?


# interactive debugging via debugonce() ----------------------------------------



# interactive debugging via recover error option--------------------------------



# interactive debugging via trace() ----------------------------------------------



# Can you determine exactly why the bug is occurring?
# If you have time, try to fix it!
