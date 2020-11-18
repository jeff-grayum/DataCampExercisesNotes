dogs <- c("Xolo", "Emma", "Hazel", "Che", "Toby", "Teddy", "Misha", "Swift")
for(dog in dogs){
  print(dog)
}

for(name in dogs) {
  print(name)
}
x <- 3
x
for(i in 1:length(dogs)){
  print(paste(dogs[i], "is on position", i, "in the dogs vector."))
}

for(n in 1:length(dogs)){
  print(paste(dogs[n], "in on position", n, "in the dogs vector."))
}

biologists <- c("Jeff", "Josh", "Angela", "Tom", "Erin", "Talitha", "Taylor", "Tim", "Chris")
for(p in 1:length(biologists)){
  print(paste(biologists[p], "is on position", p, "on the biologists vector"))
}

for(i in 1:length(biologists)){
  print(paste(biologists[i], "is on position", i, "on the biologists vector."))
}

for(bio in biologists){
  print(bio)
}

for(name in biologists){
  print(name)
}
for(x in 1:length(biologists)){
  print(biologists[x])
}
for(m in my_list){
  print(m)
}
for(i in 1:length(my_list)){
  print(my_list[[i]])
}

ttt
ttt_matrix <- matrix(ttt, byrow = TRUE, ncol = 3)
ttt_matrix
ttt_matrix
for(i in 1:nrow(ttt_matrix)){
  for(j in 1:ncol(ttt_matrix)){
    print(paste("On row", i, "and column", j, "the board contains", ttt_matrix[i, j]))
  }
}

for(i in 1:nrow(ttt_matrix)){
  for(j in 1:ncol(ttt_matrix)){
    print(paste("On row", i, "and column", j, "the board contains", ttt_matrix[i,j]))
  }
}
linkedin
for(li in linkedin){
  if(li > 10){
    print("You're popular!")
  }else {
    print("Be more visible!")
  }
  print(li)
}
for(lin in linkedin){
  if(lin < 10){
    print("You're a loser.")
  } else{
    print("Nice!")
  }
  print(lin)
}

for(vis in linkedin){
  if(vis < 10){
    print("You're scum you loser!!")
  } else{
    print("Great job!")
  }
  print(vis)
}

for(j in 1:ncol(ttt_matrix)){
  for(i in 1:ncol(ttt_matrix)){
    print(paste("On column", j, "and row", i, "the board contains:", ttt_matrix[i,j]))
  }
}
ttt_matrix

for (li in linkedin){
  if (li > 10){
    print((paste("You're popular!", li))
          
  } else{
    print(paste("Be more visible!", li))
    
  }
  
  if (li > 16){
    print(paste("This is ridiculous, I'm outta here!", li))
    break
  }
  if (li < 5){
    print(paste("This is too embarassing!", li))
    next
  }
  
}

for (li in linkedin){
  if (li > 10){
    print("You're popular!")
  } else {
    print("Be more visible!")
  }
  if (li > 16){
    print("This is crazy, I'm outta here!")
    break
  }
  if (li < 5){
    print("This is too embarassing!")
    next
  }
  print(li)
}

rquote <- c("R's internals are irrefutably intriguing!")
chars <- strsplit(rquote, split = "")[[1]]
rcount <- 0
for (char in chars){
  if (char == "r" | char == "R"){
    rcount <- rcount + 1
  }
  if (char == "u"){
    break
  }
  
}
print(rcount)

sent <- c("I have to go catch a fat fish daddy bear")
nlets <- strsplit(sent, split = "")[[1]]
acount <- 0
for(chars in nlets){
  if(chars == "a" | chars == "A"){
    acount <- acount + 1
  }
  if(chars == "y" | chars == "Y"){
    break
  }
}
print(acount)

xo <- c(1, 5, 7, 6)
sd(c(1, 5, 7, 6))
sd(xo)

sd(x = xo)

xolo <- c(4, 2, 5, NA, 8, 3)
sd(x = xolo, na.rm = TRUE)


sd(xolo)
sd(xolo, na.rm = TRUE)
quad <- function(x){
  y = 4 * x
  return(y)
}

quad(4)

fiver <- function(p){
  y = p * 5
  return(y)
}
fiver(5)

sixerp4 <- function(b){
  if(b == 6){
    return(0)
  }
  y = (b * 6) + 4
  return(y)
}
sixerp4(6)

quad(4)

magic2 <- function(a,b){
  if(b == 0){
    return(0)
  }
  y <- (a*b) + (a/b)
  return(y)
}
magic2(4, 0)

power_of_two <- function(x, print_info = TRUE){
  y <- x ^ 2
  if(print_info == TRUE){
    print(paste(x, "to the power of 2 equals", y))
  } else{
    return(y)
  }
}
power_of_two(4, print_info = FALSE)

triple <- function(x){
  y <- x * 3
  return(y)
}
a <- 5
triple(a)
a
install.packages("ggvis")
library("ggvis")
search("ggvis")
require("ggvis")
library("ggvis")
search(ggvis)
search("ggvis")
require("ggvis")
library("ggvis")
search()
install.packages("ggplot2")
library("ggplot2")
search()
qplot(planets.df$diameter, planets.df$rotation)
for(info in planets.df){
  print(class(info))
}
lapply(planets.df, class)




gas_prices <- c(3.89, 3.79, 3.79, 3.69, 3.99, 3.59, 2.79, 4.09)
triple <- function(x){
  y <- x * 3
  return(y)
}
triple(gas_prices)

multiply <- function(x, factor){
  y <- x * factor
  return(y)
}

multiply(gas_prices, 3)
multiply(gas_prices, 5)

times10 <- lapply(gas_prices, multiply, factor = 10)
unlist(times10)

lapply

times100 <- lapply(gas_prices, multiply, factor = 100)
unlist(times100)

for(p in gas_prices){
  p <- p * 100
  print(p)
}

caco_biol <- c("BRANNON:2012", "WOODSIDE:2015", "YOUNG:2016", "HUDSON:2016", "GRAYUM:2018")
char_split <- strsplit(caco_biol, split = ":")
lower_names <- lapply(char_split, tolower)
lower_names

char_split <- strsplit(caco_biol, split = ":")
lowernames2 <- lapply(char_split, tolower)
lowernames2

select_first <- function(x){
  x[1]
}
names <- lapply(lower_names, select_first)
names

select_second <- function(y){
  y[2]
}

select_third <- function(t){
  t[3]
}

names3 <- lapply(lowernames2, select_third)
years <- lapply(lower_names, select_second)
years

select_index <- function(x, index){
  x[index]
}



names <- lapply(lower_names, select_index, index = 1)
names
years <- lapply(lower_names, select_index, index = 2)
years

nums <- sapply(names, nchar)
nums
sapply(names, nchar, USE.NAMES = FALSE)

extremes_avg <- function(x){
  (min(x) + max(x) /2)
}
lapply(gas_prices, extremes_avg)
sapply(gas_prices, extremes_avg)

extremes <- function(x){
  c(min = min(x), max = max(x))
}

sapply(gas_prices, extremes)

below_380 <- function(x){
  return(x[x<3.8])
}

sapply(gas_prices, below_380)

below_370 <- function(x){
  return(x[x<3.7])
}

sapply(gas_prices, below_370)

vapply(biologists, nchar, numeric(1))

sort(planets.df$diameter, decreasing = TRUE)
seq1 <- seq(1, 100, by = 5)
seq1
seq2 <- sort(seq1, decreasing = TRUE)
seq2

grepl(pattern = "a", x = lower_names)
?sub()

my_birthday <- as.Date("1988-01-12")
my_birthday
gas_diff <- diff(gas_prices)
gas_diff
print(mean(gas_diff))



diam_diff <- diff(planets.df$diameter)
diam_diff
print(mean(diam_diff))

rotation_diff <- diff(planets.df$rotation)
print(mean(rotation_diff))