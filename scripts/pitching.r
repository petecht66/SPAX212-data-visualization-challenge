# Libraries needed for this script
library(ggplot2)

# creating pitching data frame
pitching <- read.csv("https://raw.githubusercontent.com/petecht66/SPAX212-data-visualization-challenge/refs/heads/main/data/PitchingData.csv")
summary(pitching)

# manufacturing wins histogram
ggplot(data = pitching, aes(x = W)) +
  geom_histogram(binwidth = 5, fill = "azure4", color = "white") +
  labs(
    title = "Distribution of 2025 Team Wins",
    x = "Wins",
    y = "Number of Teams") +
  theme_minimal()

  # scatter plot of wins versus team ERA
  ggplot(data = pitching, aes(x = ERA, y = W)) + 
    geom_point(color = "azure4", alpha = 0.7) +
    geom_smooth(method = "lm", color = "red") + 
    labs(title = "Team ERA vs. Wins", 
    x = "Team ERA", y = "Number of Wins")