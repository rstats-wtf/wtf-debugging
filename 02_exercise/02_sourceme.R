fruit <- data.frame(
  row.names = c("calories", "weight", "yumminess"),
  blackberry = c(4L, 9L, 6L),
  blueberry = c(1L, 2L, 8L),
  peach = c(59L, 150L, 10L),
  plum = c(30L, 78L, 5L)
)

find_cols <- function(dat, pattern){
  grep(pattern, names(dat))
}

reduce_dat <- function(dat, cols){
  dat[ , cols]
}

message_fruit <- function(mini_dat){
  message("Found ", ncol(mini_dat), " fruits!")
}

compute_avg <- function(mini_dat){
  rowMeans(mini_dat)
}


fruit_avg <- function(dat, pattern) {
  cols <- find_cols(dat, pattern)
  mini_dat <- reduce_dat(dat, cols)
  message_fruit(mini_dat)
  compute_avg(mini_dat)
}


