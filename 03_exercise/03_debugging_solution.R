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
library(wtfdbg)

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

# How do the tracebacks look different compared to 02_exercise?


# interactive debugging via debugonce-------------------------------------------
# set interactive debugger 
debugonce(fruit_avg)
# trigger interactive debugger
fruit_avg(fruit, "peach")

# navigate the debugger using the buttons at the top of the console
# be sure to try the "step into" option!

# while in the debugger, explore the objects in your environment
# with ls.str()


# interactive debugging via recover error option--------------------------------
options(error = recover)

# trigger recover
fruit_avg(fruit, "peach")
# explore the frames

# reset options
options(error = NULL)



# interactive debugging via trace ----------------------------------------------

# investigate the function body
x <- as.list(body(fruit_avg))
View(x)

# identify a function step to enter debugger
as.list(x[[5]][[1]])
# equivalent notation
as.list(x[[c(5, 1)]])


# insert browser statement at specified step
trace(fruit_avg, browser, at = list(c(5, 1)))

# trigger trace
fruit_avg(fruit, "peach")

# try ls.str() to get your bearings 
# and s, s, s, to keep stepping through functions

# cancel tracing
untrace(fruit_avg)


# Can you determine exactly why the bug is occurring?
# If you have time, try to fix it!



