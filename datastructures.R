# Data structures in R

#Vectors---- can have only one data type
x= 1:10  #create sequence of numbers from 1 to 10
x
x1 <- 1:20
x1

(x1 = 1:30) #creating & printing as well in single line
(x2 = c(1, 2, 8, 9)) #c for concatenate
class(x2)
(x3 = letters[1:10])
class(x3)
letters [1:26]
(x3b = c("s", "swarna", "5"))
class(x3b)
(x4 = c(T,FALSE,TRUE,T,F))
class(x4)
x5= c(3L,5L) #L is for integer
class(x5)
(x5b = c(1, "a", T, 4L))
class(x5b)

#access elements

(x6 = seq(0,100, by=3))
?seq
methods (class ='numeric') #to know what functions for numeric
ls() #variables in my environment
x6[20] #20th position element
length(x6) #no of elements in vector

x6[c(2, 4)] #to access 2nd & 4th element
x6[-1] #to print all elements except first element
x6[-c(1:10, 15:20)] #removes 1st to 10th element nd 15 to 20; prints rest
x6[-(length(x6)-1)] #removes 96th element

sort(x6)
sort (x6, decreasing= T)
rev(x6) #reverse order of creation

(x7 = c(x6,x2))
seq(-3, 10, by= 0.2)
(x= -3:2)
x[2] = 0 # make 2nd element 0
x #print x from above
x < 0
x[x<0] = 5 ; x #modify all elements with value less than 0 with 5

x = x[1:4]; x #truncate to first 4 elements
(x = seq(1,5, length.out = 10)) #divides 1 to 5 into 10 parts

x = NULL; x #deleting a vector
x[4]

(x = rnorm(100)) #creates nrml dist with mean 0 & s.d 1)

(x = rnorm(1000, mean =50, sd=5))
plot(density(x))
mean(x)
abline(v=mean(x), h=0.04)

#Matrices----
1:12
(m1 = matrix(1:12, nrow = 4))
(m2 = matrix(1:12, ncol = 3, byrow = T))
x = 101:124
length(x)
matrix(x, ncol =6)

class(m1)
attributes(m1) #gives dimensions of matrix rows n col
dim(m1)
m1
#access elements of matrix
m1[1, 2:3] #1st row, 2nd n 3rd col
m1[c(1,3),] #to access all col elemensts of 1st n 3rd row
m1[,1]
m1[,-c(1,3)]

paste("c", "d", sep = "-")
paste("c", 1:100, sep = "-")

(colnames(m1) = paste("c", 1:3, sep = "-"))
(rownames(m1) = paste("r", 1:4, sep = "-"))
attributes(m1)

#vectors to matrix
(m3 = 1:24) #vector
dim(m3)= c(6,4) #vector to matrix
m3

m3[-2,]
m2[m2 >5]

m2 
m2[2,2] =10; m2 #changing 2,2 element to 10
m2[m2>10] = 99; m2
rbind(m2,c(50,60,70)) #only displays the added row temporarily; doesnt store
m2
colSums(m1); rowSums(m1)
t(m1) #transpose

sweep(m1, MARGIN = 1, STATS = c(2,3,4,5), FUN= "+") #ROWWISE ADDS 1 TO 1ST ROW, 2 TO 2ND ROW N SO ON
sweep(m1, MARGIN = 2, STATS = c(2,3,4), FUN= "*") #COLWISE MULTIPLY 1ST COL WITH 2, 2ND COL WITH 3 AND SO ON
m1
?addmargins
addmargins(m1, margin = 1, sum) #colwise function
#Arrays----


#Data frame----
(rollno = 1:30)
(sname = paste('student', 1:30, sep=''))
(gender = sample(c('M' , 'F'), size =30, replace=T, prob = c(0.7, 0.3)))
(marks = floor(rnorm(30, mean= 50, sd =10)))
(marks2 = ceiling(rnorm(30, 40, 5)))
(course = sample (c('BBA', 'MBA'), size =30,replace= T, prob=c(0.5, 0.5)))
rollno; sname; gender
marks; marks2; course

#create df
df1= data.frame(rollno, sname, gender, marks, marks2, course, stringAsFactors = F)
str(df1) #structure of df
head(df1) #top 6 rows
head(df1, n=3) #top  3 rows
#Factors----


#Lists----