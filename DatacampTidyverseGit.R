install.packages("gapminder")
library("gapminder")
install.packages("dplyr")
library("dplyr")
search()
gapminder
gapminder %>%
  filter(year == 2007, country == "Afghanistan")
gapminder %>%
  filter(country == "United States")

gapminder %>%
  filter(country == "United States") %>%
  arrange(desc(pop))

gapminder %>%
  filter(country == "Mexico") %>%
  arrange(desc(pop))

gapminder %>% 
  filter(country == "Mexico") %>%
  arrange(lifeExp)

gapminder %>%
  filter(country == "United States") %>%
  arrange(lifeExp)
gapminder %>%
  filter(year == 2007) %>%
  arrange(desc(gdpPercap)) %>%
  mutate(gdp = gdpPercap * pop) 

gapminder %>%
  filter(country == "Mexico") %>%
  arrange(gdpPercap) %>%
  mutate(gdp = gdpPercap * pop)

gapminder_UnitedStates <- gapminder %>%
  filter(country == "United States")
gapminder_UnitedStates

gapminder_Mexico <- gapminder %>%
  filter(country == "Mexico")
gapminder_Mexico

gapminder_Americas2007 <- gapminder %>%
  filter(continent == "Americas", year == 2007)
gapminder_Americas2007


gapminder_2007 <- gapminder %>%
  filter(year == 2007)
gapminder_2007
library(ggplot2)
ggplot(gapminder_2007, aes(x = pop, y = lifeExp)) + geom_point()
ggplot(gapminder_2007, aes(x = gdpPercap, y = lifeExp)) + geom_point()
gapminder

ggplot(gapminder_Mexico, aes(x = year, y = gdpPercap)) + geom_point()

search()

library(gapminder)
library(ggplot2)

gapminder %>%
  filter(country == Angola)

library(dplyr)
gapminder %>%
  filter(country == "Angola")

gapminder %>%  
  filter(continent == "Africa", year == 2007) %>%
  arrange(pop)

gapminder_2002 <- gapminder %>%
  filter(year == 2002)
gapminder_2002

gapminder_2002 %>%
  arrange(gdpPercap)

ggplot(gapminder_2002, aes(x = lifeExp, y = gdpPercap)) + geom_point()


ggplot(gapminder_2002, aes(x = pop, y = gdpPercap)) + geom_point()

mutate(population = pop/10000)

gapminder_2002 %>%
  mutate(population = pop / 10000)


ggplot(gapminder_2002, aes(x = population, y = gdpPercap)) + geom_point()

gapminder_1952 <- gapminder %>%
  filter(year == 1952)

ggplot(gapminder_1952, aes(x = pop, y = gdpPercap)) + geom_point()
ggplot(gapminder_1952, aes(x = pop, y = lifeExp)) + geom_point() + scale_x_log10()
ggplot(gapminder_Mexico, aes(x = pop, y = lifeExp)) + geom_point() + scale_x_log10()
ggplot(gapminder_1952, aes(x = pop, y = gdpPercap)) + geom_point() + scale_x_log10() + scale_y_log10()
ggplot(gapminder_1952, aes(x = pop, y = gdpPercap, color = continent)) + geom_point() + scale_y_log10()

ggplot(gapminder_Mexico, aes(x = pop, y = lifeExp, size = gdpPercap)) + geom_point() + facet_wrap(~year) + scale_x_log10()
ggplot(gapminder, aes(x = lifeExp, y = gdpPercap, color = continent)) + geom_point() + facet_wrap(~ year)
library(dplyr)
library(gapminder)
library(ggplot2)
gapminder %>%
  group_by(year) %>%
  summarize(meanLifeExp = mean(lifeExp), totalPop = sum(pop))
gapminder_2007 %>%
  group_by(continent) %>%
  summarize(meanLifeExp = mean(lifeExp), meanGDPperCap = mean(gdpPercap))


gapminder %>%
  group_by(country) %>%
  summarize(meanLifeExp = mean(lifeExp))

gapminder %>%
  group_by(country) %>%
  summarize(meanGDPperCap = mean(gdpPercap))
gapminder %>%
  group_by(year) %>%
  summarize(meanLifeExp = mean(lifeExp))




gapminder %>%
  group_by(year) %>%
  summarize(medianLifeExp = median(lifeExp), maxGdpPerCap = max(gdpPercap)/10000)

gapminder %>%
  filter(year == 1957) %>%
  group_by(continent) %>%
  summarize(medianLifeExp = median(lifeExp), maxGdpPercap = max(gdpPercap))

gapminder %>%
  filter(year == 2007) %>%
  group_by(continent) %>%
  summarize(medianLifeExp = median(lifeExp))

gapminder %>%
  group_by(continent, year) %>%
  summarize(medLifeExp = median(lifeExp), maxGdpPercap = max(gdpPercap))

gapminder %>%
  group_by(continent, year) %>%
  summarize(medianLifeExp = median(lifeExp), meanGDPperCap = mean(gdpPercap))

by_year <- gapminder %>%
  group_by(year) %>%
  summarize(medianLifeExp = median(lifeExp), maxGdpPercap = max(gdpPercap))


ggplot(by_year, aes(x = year, y = medianLifeExp)) + geom_point() + expand_limits(y = 0)

by_year_continent <- gapminder %>%
  group_by(year, continent) %>%
  summarize(medianGdpPercap = median(gdpPercap))

ggplot(by_year_continent, aes(x = year, y = medianGdpPercap, color = continent)) + geom_point() + expand_limits(y = 0)

by_continent_2007 <- gapminder %>%
  filter(year == 2007) %>%
  group_by(continent) %>%
  summarize(medianLifeExp = median(lifeExp), medianGdpPercap = median(gdpPercap))
ggplot(by_continent_2007, aes(x = medianGdpPercap, y = medianLifeExp, color = continent)) + geom_point()

by_year <- gapminder %>%
  group_by(year) %>%
  summarize(medianGdpPercap = median(gdpPercap))
ggplot(by_year, aes(x = year, y = medianGdpPercap)) + geom_line() + expand_limits(y = 0)

by_year_continent <- gapminder %>%
  group_by(year, continent) %>%
  summarize(medianGdpPercap = median(gdpPercap))
ggplot(by_year_continent, aes(x = year, y = medianGdpPercap, color = continent)) + geom_line() + expand_limits(y = 0)

LEbyYearCont <- gapminder %>%
  group_by(year, continent) %>%
  summarize(meanLifeExp = mean(lifeExp))
ggplot(LEbyYearCont, aes(x = year, y = meanLifeExp, color = continent)) + geom_line() + expand_limits(y = 20)
by_continent <- gapminder %>%
  filter(year == 1952) %>%
  group_by(continent) %>%
  summarize(medianGdpPercap = median(gdpPercap))
ggplot(by_continent, aes(x = continent, y = medianGdpPercap)) + geom_col()

oceania_1952 <- gapminder %>%
  filter(year == 1952, continent == "Oceania")
ggplot(oceania_1952, aes(x = country, y = gdpPercap)) + geom_col()

gapminder_1952 <- gapminder %>%
  filter(year == 1952) %>%
  mutate(pop_by_mil = pop/1000000)
ggplot(gapminder_1952, aes(x = pop_by_mil)) + geom_histogram(bins = 50)

gapminder_1952 <- gapminder %>%
  filter(year == 1952)
ggplot(gapminder_1952, aes(x = pop)) + geom_histogram() + scale_x_log10()

#Adding a title ( + ggtitle("))
ggplot(gapminder_1952, aes(x = continent, y = gdpPercap)) + geom_boxplot() + scale_y_log10() + ggtitle("Comparing GDP per capita Across Continents")

summarize(meanlifeExp = mean(lifeExp))

gapminderBoxPlot <- gapminder %>%
  filter(year == 1952) %>%
  group_by(continent) %>%
  summarize(meanGDPperCap = mean(gdpPercap))
ggplot(gapminderBoxPlot, aes(x = continent, y = meanGDPperCap)) + geom_histogram() + ggtitle("Comparing Mean GDP per Cap Across Continents in 1952")

library(gapminder)

shortest_living <- gapminder[which.min(gapminder$lifeExp), ]
shortest_living
poorest <- gapminder[which.min(gapminder$gdpPercap), ]
poorest
longestLiving <- gapminder[which.max(gapminder$lifeExp), ]
longestLiving
mostPop <- gapminder[which.max(gapminder$pop), ]
mostPop
highestGDPperCap <- gapminder[which.max(gapminder$gdpPercap), ]
highestGDPperCap

contGapminder <- gapminder %>%
  group_by(continent)
richestCont <- contGapminder[which.max(contGapminder$gdpPercap), ]
richestCont

poorestCont <- contGapminder[which.min(contGapminder$gdpPercap), ]
poorestCont

leastPop <- gapminder[which.min(gapminder$pop), ]
leastPop
shortestLiving <- gapminder[which.min(gapminder$lifeExp), ]
shortestLiving