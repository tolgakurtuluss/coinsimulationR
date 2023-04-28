set.seed(sample(1:5000,1))

# Define the starting amount and number of players
starting_amount <- 0
num_players <- 3

# Set the starting amount for each player
starting_amounts <- rep(starting_amount, num_players)

# Define the number of rounds to play for each player
num_rounds <- 1000
rounds_played <- rep(num_rounds, num_players)

# Create a matrix to store the amounts after each round for each player
amounts <- matrix(nrow = num_players, ncol = num_rounds + 1)

for (i in 1:num_players) {
  amounts[i, 1] <- starting_amounts[i]
}

# Simulate the game for each player
for (i in 1:num_players) {
  for (j in 1:num_rounds) {
    coin_flip <- sample(c("heads", "tails"), size = 1, prob = c(0.5, 0.5))
    
    if (coin_flip == "heads") {
      amounts[i, j + 1] <- round(amounts[i, j] + 0.9, 2)
    } else {
      amounts[i, j + 1] <- round(amounts[i, j] - 0.8, 2)
    }
  }
}

# Convert the matrix of amounts to a data frame
library(tidyverse)
amounts_df <- data.frame(
  person = rep(1:num_people, each = num_rounds + 1),
  round = rep(0:num_rounds, num_people),
  amount = as.vector(t(amounts))
)

# Create a color palette for each player
library(RColorBrewer)
color_palette <- colorRampPalette(brewer.pal(8, "Dark2"))(num_players)

# Create the plot using ggplot2
library(plotly)
plot <- ggplot(amounts_df, aes(x = round, y = amount, color = as.factor(person))) +
  geom_line() +
  geom_point() +
  scale_color_manual(values = color_palette) +
  labs(x = "Round", y = "Amount", title = "Individual Performance") +
  theme(legend.position = "top")

# Convert ggplot to plotly object and show the plot
ggplotly(plot)
