# install.packages("tidyverse")
# install.packages("gapminder")
library(tidyverse)
library(gapminder)
gapminder
help(gapminder)

# Programmieren

# Datenüberblick
glimpse(gapminder)
head(gapminder)
tail(gapminder)
summary(gapminder)

# Daten bearbeiten
gapminder %>%
  group_by(continent) %>% 
  filter(year == 2002) %>% 
  mutate(gdp = pop * gdpPercap) %>% 
  summarize(mean(lifeExp),
            sd(lifeExp))

# Daten visualisieren
ggplot(data = gapminder) +
  geom_point(mapping = aes(x = gdpPercap,
                           y = lifeExp,
                           color = continent,
                           size = pop)) +
  scale_x_log10() +
  facet_wrap(facets = ~year)

# Regression

