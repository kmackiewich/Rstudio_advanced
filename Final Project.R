# United States, Argentina, Albania
download.file("https://raw.githubusercontent.com/swcarpentry/r-novice-gapminder/gh-pages/_episodes_rmd/data/gapminder-FiveYearData.csv", destfile = "data/gapminder2.csv")
gapminder <- read.csv("data/gapminder2.csv")

United_States <- subset(gapminder, gapminder$country == "United States")

X <- United_States$year
Y <- United_States$gdpPercap
plot(X, Y, xlab = "Year", ylab = "GDP", main = "United States")

Three_Countries <- subset(gapminder, gapminder$country == "United States" | gapminder$country == "Argentina" | gapminder$country == "Uganda")
head(Three_Countries)
summary(Three_Countries)
Three_Countries$country <- droplevels(Three_Countries)

for(w in Three_Countries) {
  plot(X, Y, xlab = "Year", ylab = "GDP")
  out <- 
}


analyze <- function(DF, Cntry) {
  country_name <- subset(DF, gapminder$country == Cntry)
  plot(country_name$year, country_name$gdpPercap, xlab = "Year", ylab = "GDP", main = Cntry)
}
analyze(Three_Countries, "United States")
analyze(Three_Countries, "Argentina")
str(gapminder)

new_list <- c("Uganda", "United States", "Argentina")

for (c in new_list) {print(c)}
for (c in new_list) {
  print(analyze_n(c))} #this is function from file Day 2 Code, need to modify for year and GDP

analyze_n("Uganda")
