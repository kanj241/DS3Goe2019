data <- read.csv(file = "./data/data1_full.csv", header = T)

sub_data <- data[data$country == "Canada", ]

write.csv(sub_data, file = "./data/Canada.csv", row.names = FALSE)

library(ggplot2)
ggplot(data = sub_data, aes(x = year, y = lifeExp)) +
  geom_point() +
  geom_line() 
ggsave("./results/graph.png")



