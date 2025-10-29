set.seed(235711)

data(iris)

m1 <- rbinom(600, 1, 0.1) |> as.logical() |> c(rep(FALSE, 150)) |> matrix(nrow = 150)
m2 <- rbinom(600, 1, 0.1) |> as.logical() |> c(rep(FALSE, 150)) |> matrix(nrow = 150)

iris[m1] <- -88
iris[m2] <- -99

iris <- data.frame(ID = 1:150 + 42, iris)

write.csv(iris, here::here("data", "iris.csv"), row.names = FALSE)
write.table(iris, here::here("data", "iris.txt"), row.names = FALSE, col.names = TRUE, sep = "\t")

