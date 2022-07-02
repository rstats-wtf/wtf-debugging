# source of error: 
#
# when only one fruit is found,
# mini_dat <- dat[ , cols]
# returns a vector instead of a data frame
#
# e.g., fruit[, 1:2] vs fruit[, 1]
#
# this can be fixed with the drop argument
# fruit[, 1, drop = FALSE]

# here is this fixed fruit_avg()
fruit_avg <- function(dat, pattern) {
  cols <- grep(pattern, names(dat))
  mini_dat <- dat[ , cols, drop = FALSE]
  message("Found ", ncol(mini_dat), " fruits!")
  rowMeans(mini_dat)
}
