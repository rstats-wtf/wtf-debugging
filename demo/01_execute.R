source("demo/01_my_functions.R")
g("a")
traceback()

source("demo/01_my_functions.R")
options(error = rlang::entrace) 
g("a")
rlang::last_trace()