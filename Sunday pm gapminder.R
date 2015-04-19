# this is the script to explore gapminder
#read in data as tab-delimited
gap.in <- read.table("output/combined_gapMinder.tsv", sep = "\t", header = TRUE)
for (number in 1:10){
  number.out <- number + 10
}
for (number in 1:10){
  print(gap.in[number,])
}
for (row.number in 1:10){
  for (col.number in 1:5){
    print(gap.in[row.number,col.number,])
  }
}
gap.in[1:10,1:5]
add.me <- function(x,y) {
  x+y
}
add.me(3,4)
# install dplyr package and dependencies
install.packages("dplyr", dependencies = TRUE)
#load dplyr library into working environment 
library("dplyr")
#making a pipe to, read, filter, select, group, summarize
gap.in %>%
  filter(pop > 15000000) %>%
  select(country, year, pop) %>%
  group_by(country)%>%
  summarize(min=min(pop))
gap.in %>%
  filter(year < 1990) %>%
  select(continent, year, pop) %>%
  group_by(continent)%>%
  summarize(mean=mean(pop))
gap.in %>%
  filter(year < 2001) %>%
  select(continent, year, pop) %>%
  group_by(continent)%>%
  summarize(mean=mean(pop)) -> data.out
data(iris)
attach(iris)
#install tidyr package
install.packages("tidyr", dependencies = TRUE)
library("tidyr")
