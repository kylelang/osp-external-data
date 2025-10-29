rm(list = ls(all = TRUE))

library(ggplot2)

data(iris)
data(attitude)

out <- lm(Petal.Width ~ Petal.Length + Species, data = iris)
p1 <- ggplot(attitude, aes(complaints, rating)) + geom_point()

save.image(here::here("data", "snapshot.RData"))
