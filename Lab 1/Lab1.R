# source("d:\\CS\\DA-LAB\\Lab1.R")

# Ques 1:
cat("\n\n\n")
isLucky <- function(numList) {
    for (num in numList) {
        if (num %% 7 == 0) {
              return(TRUE)
          }
    }
    return(FALSE)
}
ans1 <- isLucky(c(1, 2, 4, 7))
ans2 <- isLucky(c(1, 2, 4, 5))
result <- paste(as.character(ans1), as.character(ans2), sep = " ")
print(result)



# Ques 2:
print("\n\n\n")
# "Data Science" will be printed 11 Times.
# can be seeen below:

i <- 1024
c <- 1
while (i > 0) {
    cat(c, "Data Science", "\n")
    i <- as.integer(i / 2)
    c <- c + 1
}


# Ques 3 :
cat("\n\n\n")
num <- sample(1:100, 1)
message <- "Guess a Number between 1 to 100 in 5 Tries : "
# print(message)

for (i in c(1:5)) {
    x <- readline(prompt = message)
    if (x < num) {
        message <- "Move to a Higher Number!! : "
    } else if (x > num) {
        message <- "Move to a Lower Number!! : "
    } else {
        message <- "U guessed It correct Congrats!!"
        break
    }
}
if (i == 5) {
    if (x != num) {
        print(paste("Oops You lost! Better Luck Next Time! No. was = ", num))
    } else {
        print("U guessed It correct Congrats!!")
    }
}

# Ques 4 :

cat("\n\n\n")
check_tossProbability <- function(SampleSize) {
    Prob <- c(0.5, 0.5)
    my_sample <- sample(0:1, SampleSize, replace = TRUE, prob = Prob)
    h <- sum(my_sample == 1)
    t <- sum(my_sample == 0)
    print(paste("For Sample Size = ", SampleSize))
    print(paste("Heads(1) = ", h, ", Probability of Head = ", h / SampleSize))
    print(paste("Tails(0) = ", t, ", Probability of Tail = ", t / SampleSize))
}

check_tossProbability(100)
check_tossProbability(1000)
check_tossProbability(10000)

# Ques 5 :
cat("\n\n\n")
remove_multiples_of_three <- function(numList) {
    # The function takes a list of numbers and returns the list without multiples of 3.
    x <- numList[numList %% 3 != 0]
    return(x)
}

print(remove_multiples_of_three(c(1, 2, 3, 4, 30, 23, 21)))

# Ques 6 :

cat("\n\n\n")
cereals <- structure(c(
    431.87, 284.33, 621.44, 95.01, 106.03, 102.45, 475.96, 297.85,
    616.25, 102.93, 84.13, 117.74, 440.12, 313.61, 617.93, 109.33, 117.78, 131.14
),
.Dim =
    c(6L, 3L), .Dimnames = list(c("United States", "India", "China", "Indonesia", "Braziiil Ole
Ole", "Russian Federation"), c("2015", "2016", "in 2017"))
)

print(cereals)
x <- rownames(cereals)
y <- colnames(cereals)
cat("\n Row Names: ", x)
print(length(x) == dim(cereals)[1])
cat("\n\n Column Names: ", y)
print(length(y) == dim(cereals)[2])

colnames(cereals)[3] <- "2017"
rownames(cereals)[5] <- "Brazil"

# Ques 7 :

# a.
Name <- c("Antansia", "Dima", "Katherine", "James", "Emily", "Michael", "Matthew", "Laura", "Kevin", "Jonas")
Score <- c(11.5, 8.0, 15.5, 1.0, 5.5, 19.0, 12.5, 10.5, 7.0, 8.0)
Attempts <- c(3, 3, NA, 2, NA, NA, 1, 1, 2, NA)
Qualify <- c("yes", "no", "yes", "no", "no", "yes", "yes", "no", "no", "yes")
Gender <- c("F", "F", "F", "M", "F", "M", "M", "F", "M", "M")
Age <- c(18, 17, NA, NA, 19, 17, 18, 17, 19, 19)
df <- data.frame(Name, Score, Attempts, Qualify, Gender, Age)
print(df)

# b.
df <- df[, which(colnames(df) != "Gender")]
# df=df[,-5]
# df = subset(df, select = -c(Gender))
# df=df[c('Name','Score','Attempts','Qualify','Age')]
# df$Gender<-NULL
print(df)

# c.
cat("\n\n", "No. of Null Values in each column: ", "\n")
print(data.frame(colSums(is.na(df))))

# d.
cat("\n\n", "Null Values Replaced by Means:  ", "\n")
df[is.na(df[, "Age"]), "Age"] <- mean(df[, "Age"], na.rm = TRUE)
df[is.na(df[, "Attempts"]), "Attempts"] <- mean(df[, "Attempts"], na.rm = TRUE)
print(df)

# e.
cat("\n\n", "Scores incremented by One:   ", "\n")
df["Score"] <- df["Score"] + 1
print(df[, "Score"])

# f.
cat("\n\n", "Percentage column Added and score deleted:  ", "\n")
df["%age"] <- df["Score"] * 5
df[, "Score"] <- NULL
print(df)

# g.
cat("\n\n", "Details of Qualified students with Age < 19:  ", "\n")
df[which(df[, "Age"] < 19 & df[, "Qualify"] == "yes"), ]
# subset(df, Age<19 & Qualify=="yes")

# h.
cat("\n\n", "Order dataframe by percenytage:  ", "\n")
print(df[order(df[, "%age"]), ])

# i
cat("dimensions", dim(df))

# Ques 8 :
data(iris)
summary(iris)
tail(iris, 10)
iris[5, ]
iris[, c(2, 3)]
newiris <- subset(iris, Species == "versicolor")
newiris
plot(newiris)