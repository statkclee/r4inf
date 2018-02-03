# 0. 환경설정 ------
library(tidyverse)
library(stringr)

# 1. 첫번째 방식 -----

text_v <- "the clown ran after the car and the car ran into the tent and the tent fell down on the clown and the car"
split_word <- str_split(text_v, " ")
table(split_word) %>% sort(decreasing=TRUE)

# 2. 두번째 방식 ------

text_dat <- readLines("data/ch01-text.txt")
split_word2 <- str_split(text_dat, " ")
table(split_word2) %>% sort(decreasing=TRUE)