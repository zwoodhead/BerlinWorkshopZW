#########################################################################
## Notes from software carpentry course on ggplot

library(gapminder)
library(ggplot2)

# View the data to be used in the visualisations
View(gapminder)

# aes = aesthetics
ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp)) + # sets up the data and axes
  geom_point() # adds the type of plot as a new geom layer


# Can add more layers with more + lines. Each new layer is drawn on top of the last one.
# You can also set the aesthetics for each layer separately, e.g.:
ggplot(data = gapminder, aes(x=year, y=lifeExp, by=country)) + # by = tells ggplot to draw one line per country
  geom_line(aes(color=continent)) + 
  geom_point() # Here the lines are coloured by continent, but the points are all the same colour (black)
   # Here the lines are coloured by continent, but the points are all the same colour (black)

# Setting the colours in the aes term allocates the colours according to a variable in the data. 
# But if you want to set everything to one colour, you don't need to do it within aes:
ggplot(data = gapminder, aes(x=year, y=lifeExp, by=country)) + # by = tells ggplot to draw one line per country
  geom_line(color="blue")





# Challenge 1
ggplot(data = gapminder, aes(x = year, y = lifeExp)) +
  geom_point()

# Challenge 2
ggplot(data = gapminder, aes(x = year, y = lifeExp, color = continent)) + # color = sets the color of the points according to a different variable
  geom_point()

ggplot(data = gapminder, aes(x=year, y=lifeExp, by=country, color=continent)) + # by = tells ggplot to draw one line per country
  geom_line() + geom_point()



