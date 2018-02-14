#!/usr/bin/env Rscript
library(stringr)

args <- commandArgs(trailingOnly=TRUE)
fname <- args[1]

tryCatch({
  fhand <- file(fname, open = "r")
},
  error = function(err) print(paste("ERROR: ", err))
)

count <- 0
for(line in readLines(fhand)) {
  if(str_detect(line, "Subject:")) {
    count <- count + 1
  }
}

cat('There were', count, 'subject lines in', fname)
