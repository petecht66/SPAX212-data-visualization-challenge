# Libraries needed for this script
library(ggplot2)

# creating fielding data frame
fielding <- read.csv("https://raw.githubusercontent.com/petecht66/SPAX212-data-visualization-challenge/refs/heads/main/data/FieldingData.csv")
summary(fielding)
head(fielding)

# scatter plot between fielding percentage and runs allowed per game
ggplot(data = fielding, aes(x = Fld., y = RA.G)) + 
    geom_point(color = "azure4", alpha = 0.7) +
    geom_smooth(method = "lm", color = "steelblue") + 
    labs(
    title = "Team Fielding Percentage vs. Runs Allowed Per Game", 
    x = "Fielding Percentage", 
    y = "Runs Allowed Per Game")

# correlation between fielding and runs allowed, use of . in place of / and % to fix errors
round(cor(fielding$RA.G, fielding$Fld., use="complete.obs"), 2)

# graphing teams by defensive efficiency
ggplot(fielding, aes(x = DefEff, y = reorder(Team, DefEff))) +
  geom_bar(stat = "identity", fill = "azure4") +
  coord_cartesian(xlim = c(0.64, 0.725)) +
  labs(
    title = "2025 Team Defensive Efficiency",
    x = "Defensive Efficiency",
    y = "Team"
  ) +
  theme_minimal()
