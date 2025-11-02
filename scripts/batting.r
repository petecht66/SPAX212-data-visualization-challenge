# Libraries needed for this script
library(ggplot2)

# creating batting data frame
batting <- read.csv("https://raw.githubusercontent.com/petecht66/SPAX212-data-visualization-challenge/refs/heads/main/data/BattingData.csv")
summary(batting)
head(batting)

# create a model to evaluate which hitting metrics are important for runs scored
battingModel <- lm(R ~ BA + SLG + OBP, data = batting)
summary(battingModel)

# create a model to evaluate importance of baserunning for runs scored
baserunningModel <- lm(R ~ SB + CS, data = batting)
summary(baserunningModel)