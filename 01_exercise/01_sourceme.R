fruit <- data.frame(
  row.names = c("calories", "weight", "yumminess"),
  blackberry = c(4L, 9L, 6L),
  blueberry = c(1L, 2L, 8L),
  peach = c(59L, 150L, 10L),
  plum = c(30L, 78L, 5L)
)

fruit_avg <- function(dat, pattern) {
  cols <- grep(pattern, names(dat))
  mini_dat <- dat[ , cols]
  message("Found ", ncol(mini_dat), " fruits!")
  rowMeans(mini_dat)
}