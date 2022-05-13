library(ggplot2)
library(readr)

weather_data="https://raw.githubusercontent.com/Dr-Ama-Llama/CIMOverflow_git_intro/main/Islamorada_0517.csv"
Isla_0517 <- read.csv(url(weather_data), sep = ";")

ggplot(Isla_0517, aes(Day, High))+
	geom_point(aes(color = High)) +
	theme(legend.position = "bottom") + theme(axis.text.x = element_text(angle = 45))

Isla_0517HighC <- (((Isla_0517$High)-32)*(5/9))
Isla_0517$HighC <- Isla_0517HighC

ggplot(Isla_0517, aes(Day, HighC))+
	geom_point(aes(color = HighC)) +
	theme(legend.position = "bottom") + theme(axis.text.x = element_text(angle = 45))
