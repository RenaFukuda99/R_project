library(ggplot2)

# R version
sessionInfo()

# Make df
cats_df <- data.frame(coat = c("calico","black", "tabby"),
                   weight = c(2.1,5.0,3.2), likes_strings = c(1,0,1))

# Check struct and data type
str(cats_df)
typeof(cats_df$weight)
typeof(TRUE)

# Accessing and using columns
cats_df$weight + 2
paste("My cat is ", cats_df$coat)

# Writing files
write.csv(cats_df, "cats_df.csv", row.names = FALSE, quote = FALSE)

# Making matrices
example_mat = matrix(0, ncol = 6, nrow = 3) 

# Checking dimensions
dim(cats_df)
dim(example_mat)

# Subsetting
cats_df[,3]
cats_df[1,]

# Import file
gapminder = read.csv("gapminder_data.csv")

# Plotting data
ggplot(data = gapminder, mapping = aes(gdpPercap, lifeExp, color=continent)) + 
  geom_point(alpha = 0.5) +
  labs(x = "GDP Per Capita", y = "Life Expectancy (Years)") +
  facet_grid(continent~.)

ggplot(data = gapminder, mapping = aes(gdpPercap, lifeExp)) + 
  geom_point(alpha = 0.5, aes(color=continent)) +
  labs(x = "GDP Per Capita", y = "Life Expectancy (Years)") +
  scale_x_log10() +
  geom_smooth(method = 'lm')

ggplot(data = gapminder, mapping = aes(year, lifeExp, group = country, color=continent)) + 
  geom_line(alpha = 0.8) +
  labs(x = "Year", y = "Life Expectancy (Years)") +
  geom_point(alpha = 0.1)

ggplot(data = gapminder, mapping = aes(gdpPercap, lifeExp)) + 
  labs(x = "GDP per Capita", y = "Life Expectancy (Years)") +
  scale_x_log10() +
  geom_point(aes(shape = continent, size = pop , color = continent), alpha = 0.5) +
  geom_smooth(method = 'lm')
