# debug() ----------------------------------------------------------------------
source("demo/03_my_functions.R")
# set debugging flag
debug("g")
# call function
g("a")
# turn off debugging flag
undebug("g")

# debugonce() ------------------------------------------------------------------
source("demo/03_my_functions.R")
# set debugging flag
debugonce("g")
# call function
g("a")

# options(error = recover) -----------------------------------------------------
source("demo/03_my_functions.R")
options(error = recover)
g("a")
options(error = NULL)

# trace() without a specified step ---------------------------------------------
trace(what = colSums, tracer = browser)
colSums(1:3)
# ls.str() in browser
untrace(colSums)

# trace() at specified step ----------------------------------------------------
x <- as.list(body(colSums))
View(x)

# identify spot to insert code
as.list(x[[3]][[1]])
# equivalent notation
as.list(x[[c(3, 1)]])

# insert browser at step 3.1
trace(colSums, browser, at = list(c(3, 1)))
# execute function
colSums(1:3)
# ls.str() handy in browser
# cancel tracing
untrace(colSums)
