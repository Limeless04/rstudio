double <- c(1.5,2.6,5.4) 
char <- c("Hello", "Hai")
i <- 5
comp <- c(1+1i,2+3i)
comp

object <- c(1,2,3,4,5)
names(object) <- c("satu","dua","tiga","empat","lima")
object

object <- c(1,2,3,4,5,6)
dim(object) <- c(2,3)
object

m <- matrix(object, nrow=2)
m

now <- Sys.time()
now

gender <- factor(c("male", "female", "female", "male"))
gender