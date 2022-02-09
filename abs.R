# # Ctrl-enter : run selected code
# # ctrl-shift-enter : run all code
# # command to run : source("d:\\CS\\DA-LAB\\abs.r")
# print("enter some values to vector: ")
# x <- scan()
# print(x) # print the inputted values
# cat("1", 1) # concatinate and print



num <- sample(1:100, 174)
message <- "Guess a Number between 1 to 100 in 5 Tries : "
# print(message)

for (i in c(1:5)) {
    x <- readline(prompt = message)
    flush.console()
    if (x < num) {
        message <- "Move to a Higher Number!! : "
    } else if (x > num) {
        message <- "Move to a Lower Number!! : "
    } else {
        print("U guessed It correct Congrats!!")
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