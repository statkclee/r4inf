# 0. 환경설정 ------
library(tidyverse)
library(stringr)

text_dat <- readLines("data/ch01-text.txt")
split_word <- str_split(text_dat, " ")

uniq_word <- unique(split_word)

res_v <- vector("integer", length(uniq_word))

for(i in seq_along(uniq_word)) {
  for(j in seq_along(split_word)) {
    if(uniq_word[i] == split_word[j]) {
      res_v[i] <- res_v[i] + 1
    }
  }
}

bind_cols("word" = uniq_word, "freq"=res_v) %>% arrange(desc(freq))

# 검증 -----

text_v <- "the clown ran after the car and the car ran into the tent and the tent fell down on the clown and the car"
split_word <- str_split(text_v, " ") %>% unlist
table(split_word) %>% sort(decreasing=TRUE)
