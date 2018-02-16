
numlist <- list()

while (TRUE) {
  inp <- readline('Enter a number: ')
  if(inp == 'done') break

  value <- as.numeric(inp)
  numlist <- append(numlist, value)
}

num_vector <- unlist(numlist)

average <- sum(num_vector) / length(num_vector)
cat('List Average:', average)
