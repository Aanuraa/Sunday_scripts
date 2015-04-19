# this is the script to explore gapminder
#read in data as tab-delimited
gap.in <- read.table("output/combined_gapMinder.tsv", sep = "\t")
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
