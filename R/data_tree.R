library(data.tree)

files <- c(
  ".//code",
  ".//code/prep_data.R",
  ".//code/support_functions.R",
  ".//data",
  ".//data/info.dat",
  ".//data/diabetes.rds",
  ".//data/iris.txt",
  ".//data/utmb_2017.csv",
  ".//figures",
  ".//output")

# files <- list.files("./tutorials", recursive = TRUE, include.dirs = TRUE, full.names = TRUE)

data.tree::as.Node(data.frame(pathString = files))
