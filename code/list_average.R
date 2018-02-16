
total <- 0
count <- 0

while (TRUE) {
  inp <- readline('Enter a number: ')
  if(inp == 'done') break

  value <- as.numeric(inp)
  total <- total + value
  count <- count + 1
}

average <- total / count
cat('Average:', average)
