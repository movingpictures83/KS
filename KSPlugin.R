library(stats)

input <- function(inputfile) {
  parameters <<- read.table(inputfile, as.is=T);
  rownames(parameters) <<- parameters[,1];
  v1 <<- read.csv(toString(parameters["vector1",2]))
  v1 <<- v1[,-1]
  v2 <<- read.csv(toString(parameters["vector2",2]))
  v2 <<- v2[,-1]
}

run <- function() {
  result <<- ks.test(v1, v2)
}

output <- function(outputfile) {
  print(result)
}
