if ( interactive() ){
  inp <- readLines(prompt = "Enter Fahrenheit Temperature: ")
  fahr <- as.numeric(inp)
  cel <- (fahr - 32.0) * 5.0 / 9.0
  print(cel)
} else{
  cat("Enter Fahrenheit Temperature: ")
  inp <- readLines("stdin", n=1)
  fahr <- as.numeric(inp)
  cel <- (fahr - 32.0) * 5.0 / 9.0
  print(cel)
}




