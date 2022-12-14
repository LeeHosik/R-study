var1 <-2
2 -> var2
var3 = 3

head(iris)
sumirisSL <- sum(iris$Sepal.Length)
sumirisSW <- sum(iris$Sepal.Width)
sumirisSL + sumirisSW

iris$Sepal.Length[1]
iris$Sepal.Length[1:10] # , 는 dimention
sum(iris$Sepal.Length[1:10])


#1~100까지 합계 구하기 
sumnum1 = 1
sumnum2 = 100
sum(sumnum1:sumnum2)
sum(1:100)

sum(10,20,30) # = 60
var1[2] # = 결측치 NA(Not Available) 
#[] 있는걸 vector 변수 
num1 <- c(10,20,30) #c Combine
num1[1]+num1[2]
sum(num1)
num1
# 결측치 NA(Not Available) 가 있으면 아무것도 못함
sum(10,20,30, NA)
# 데이타 정제작업 (clean up) NA를 없애서 통계or 분석 을/를 할 수 있게끔 해주는 작업
sum(10,20,30,NA, na.rm=T) # na를 rm(remove) 하는걸 ture 함

#자료형 확인
is.numeric(iris$Sepal.Length) # is는 물어보는거 numeric은 숫자 
is.integer(iris$Sepal.Length) # 정수니 ? = FALSE
is.double(iris$Sepal.Length) # 실수니 ? = TURE

class(iris$Sepal.Length) # = "numeric"

#iris처럼 행과 열이 있는걸 데이터 프레임 data frame 
is.data.frame(iris) # = true
class(iris) # = data.frame
is.na(iris) # = false 투성이 
$is.na(iris$Sepal.Length) # = false 투성이 

#false = 0, true = 1
sum(is.na(iris)) # = 0이면 전부 false, NA 가 업다 



# iris의 자료구조 확인하기
str(iris) # Structure (자료구조)

# factor(요인) 쉽게 말해서 category  index번호
# 문자와 숫자를 동시에 가지고 있는 R 에서만 있는녀석 그래서 factor라고 부를꺼임

num1 = "12345"
is.numeric(num1)
num1 = c(1,2,3,"4")
num2 = c(1,2,3,4)
class(num1)
is.numeric(num1)
num1  # = "1" "2" "3" "4"     "4" 때문에 전부 다 ""가 붙었음 
num2 # = 1 2 3 4

num3 <- as.numeric(num1)  # num1을 전부 numeric으로 바꿀꺼야

num1
class(num1) # character
num2
class(num2) # numeric
num3
class(num3) # numeric


# Factor(요인형: 범주형(category)) 변환 
gender <- c("man","woman","woman","man","man","man","woman","woman","man","woman","man","woman","woman","man","woman","man","woman")
class(gender)

#빈도수 확인
table(iris) # 빈도수를 숫자로 보기 
plot(gender) # Error plot histogram 은 숫자로만 그릴 수 있음


# 문자열 데이터를 factor로 변환해서 사용해야겠따!
Ngender <- as.factor(gender)
Ngender
plot(Ngender)

str(Ngender) # =  Factor w/ 2 levels "man","woman": 1 2 2 1 1 1 2 2 1 2 ...


# 날짜형 변환
date1 <- "17-02-28"
date2 = "16/04/30"
date1
as.Date(date1,"%y-%m-%d")
as.Date(date2,"%y/%m/%d")
 
as.Date("2019/12/31","%y/%m/%d") # = NA      y 소/대 문자
as.Date("2019/12/31","%Y/%m/%d") # = "2019-12-31"    Y2k
as.

#진짜 요일 데이터 인지 확인하기

datas <- c("02/28/17","02/29/17","03/01/17")
datas 
as.Date(datas, "%m/%d/%y") # = "2017-02-28"   NA   "2017-03-01"


# 날짜 계산

mydates <- as.Date(c("2007-06-25","2004-02-18"))
mydates

mydates[1]-mydates[2] #= Time difference of 1223 days


# 현재일짜 기준으로 날짜 계산하기 

Sys.Date() # 현재 날짜 보기 yyyy-mm-dd
class(Sys.Date()) #= "Date"

Sys.Date() - as.Date("1991-09-08")

randomnum1 <- 1234

as.character(raundomnum1)
randomnum1


# Vector 자료 구조
# - 1차원 선형 자료 구조 형태

iris$Sepal.Length  ## <<<<<< 이런게 vector   모아놓으면 data frame

# - 구성 : 변수[첨자], 첨자는 1부터 시작 (R특징)
# - 동일한 자료형의 데이터만 저장 할 수 있다.
# - 벡터 생성 함수 : c(), seq(), rep(), : 
# - 백터 처리 함수 : sum(), mean(평균), sd(표준편차), union(합집합)

head(iris)
#iris 의 Sepal.Length 컬럼의 내용을 1차원 벡터로 만들기
irisSepalLenght = iris$Sepal.Length
irisSepalLenght
#vector인지 확인하기
class(irisSepalLenght)
is.vector(irisSepalLenght)


iris$Sepal.Length
sum(iris$Sepal.Length[1:50])
sum(irisSepalLenght[51:100])
sum(irisSepalLenght[101:150])

sum(iris$Sepal.Length[1:50])
mean(iris$Sepal.Length[1:50])
sd(iris$Sepal.Length[1:50])
max(iris$Sepal.Length[1:50]) # 최대값 
min(iris$Sepal.Length[1:50])


iris$Sepal.Length
irisPetalLenght = iris$Petal.Length
irisPetalLenght

sum(irisPetalLenght)
maxIrisPL = max(irisPetalLenght)
maxIrisSL = max(irisSepalLenght) # 최대값 

maxIrisPL-maxIrisSL
maxIrisSL-maxIrisPL

meanIrisPL =mean(irisPetalLenght)
meanIrisCL = mean(irisSepalLenght)
abs(meanIrisCL- meanIrisPL)


#median() 중앙값= 중간값

range(iris$Sepal.Length[1:50])
# range(최소값, 최대값)

range(irisPetalLenght)[1] == min(irisPetalLenght)

# SD 표준편차  - 편차의 평균 
sd(irisSepalLenght)

a <- c(1,1,3,4,5)
a
mean(a)
sd(a)

# irisSepalLengh의 1,10,11 번째 data를 뽑고 합
irisSepalLenght[1]
irisSepalLenght[10]
irisSepalLenght[11]

irisSepalLenght[]
22%%4  #나머지 
22%/%5 #몫 구하는법 

irisSepalLenght
irisSepalLenght%/%10
irisSepalLenght%%10

sum(irisSepalLenght[c(1,10,11)])
sum(irisSepalLenght[c(1:20,30,40)])
mean(irisSepalLenght[c(1:20,30,40)])
sd(irisSepalLenght[c(1:20,30,40)])


# vector 형 자료의 일부를 변경

  x <- c(10, 20, 30, 40, 50, 60, 70)
  x
 
  y <- replace(x,c(2,4), c(200,400))
  y

  # 초기값, 최종값, 증가값으로 구성되는 벡터 함수 생성
  
  seq(1,10,0.5)
  
  # 1에서 10까지의 홀수, 1에서 10, 50, 60을 벡터로 만들어 합계 구하기
  seq(1,10,2)
  c(1:10,1:10,50,60)
  
  sum(c(seq(1,10,2),1:10,50,60))
  

  # repeat 반복
  rep(1,2)
  rep(1:5,4)

  rep(rep(1:4,5),3)
  rep("red",4)  
  rep(rep("red",4),3)  
  rep(c(1,4,7,9),3)  
  c(rep("Red",4),"blue","green")  
  
  rep(1:3,each=3)
  rep(1:3,each=10)
  rep("blue",each=4)    
  
# 1~20까지의 숫자중 짝수만 2번 반복하여 벡터를 만들고 합계 구하기
  rep(1:20,2)
  sum(rep(seq(2,20,2),2))
  
  
 x <- c(1,3,5,7)
 y <- c(3,5)

 # 합집합 Union
 union(x,y)

  # 교집합 intersect
  intersect(x,y)

  #차집합
  setdiff(x,y)
  
  
  # 난수random 중복없음, 범위지정, 갯수 
  sample(1:10,2)
  
  
  # 숫자를 섞겠다 -> 1~10 중에서 랜덤으로 10개가 나오니깐 
  sample(1:10,10)
  
  #sample 은 큰 범위의 데이터 중 일부를 가져와서 사용할떄 많이 쓴다고 하심
  # 이떄 sample data는 전체를 대변할 수 있어야만이 의미있게 사용가능함 
  
  sort(sample(1:45,6))

  # iris sepal.lenght 와 petel.length의 교집합
  
  sort(intersect(irisPetalLenght,irisSepalLenght))
  sort(intersect(irisPetalLenght,irisSepalLenght),decreasing)
  
  length(sort(intersect(irisPetalLenght,irisSepalLenght))) #= 24 
  
  # iris의 Sepal.Lenght와 Petal.Length의 합집합 갯수 
  length(union(irisPetalLenght,irisSepalLenght)) #= 54 
  
  # Sepal과 Petal 의 중복값이 많다   
  
  #1차원 벡터 Data에 이름 설정하기
  age <- c(30,35,40); age
  names(age) <- c("유비","관우","장비"); age
  
  
  # 중복값을 제거하기 unique
  irisPetalLenght  
  unique(irisSepalLenght)
  unique(iris$Species)
  
  x <- rep(c("a","b","c"),4);x  
  # vector에 a가 있으면 1을 보여준다.
  match(x,"a")
  
  sum(match(x,"a"), na.rm=T) # na remove T 
  # X에 a 가 4개 있다 
  
  
  table(match(x,"a")) # 1이 table 로 몇개가 있는지 볼 수 있음 
  match(x,c("a","b")) 
  table(match(x,c("a","b")))  #a은 1, b는 2 로 몇개인지 확인
  
  
  #name에서 Co를가지고 있는 단어의 번지 수
  name <- c("Apple","Computer","Samsung","Communication")
  class(name)
  grep("Co",name)
  name[grep("Co",name)]
  
  #name에서 om를가지고 있는 단어 출력하기
  
  grep("om",name)
  name[grep("om",name)]  
  
  k <- 1:100
  # 10번 ~ 전체 Data중에 끝에서 5개는 빼고 출력하고 싶다

  sample(k[10]:(length(k)-5)) # 이건 아닌듯
  k[10]:length(k)-5
  
  k[10]:(length(k)-5) 
  
  k[10:(length(k)-5)]
  
  # j<- 10:50
  # 1번지 값 지우기
  j <- 10:50
  j  
  j[1]  
  j[-1]   # 보여준거뿐이지 적용은 안되어있음 
  j
  j<- j[-1]
  j  
  
  # 10,11,12번지 값 지우기 
  j = j[-(10:12)]
  j

  m <- 10:50
  # 머가들어올지 모르는 데이터. m의 홀수 번지 data의 합계 구하기 
  m[seq(1, length(m),2)]#=  10 12 14 16 18 20 22 24 26 28 30 32 34 36 38 40 42 44 46 48 50
  sum(m[seq(1, length(m),2)])
#---------
   #---- 이걸로 다르게 구해볼거임 
  # 1~20까지의 숫자중 짝수만 2번 반복하여 벡터를 만들고 합계 구하기
  rep(1:20,2)
  sum(rep(seq(2,20,2),2))
  
  
  sum(match(x,"a"), na.rm=T) # na remove T 
  
  match(m)
  
  x <- rep(c("a","b","c"),4);x  
  # vector에 a가 있으면 1을 보여준다.
  match(x,"a")  
#----------
  
 
  #  m <- 10:50 머가들어올지 모르는 데이터.
  # 최대값과 최소값의 차이가 3보다 큰지 확인
  
  (max(m)-min(m))>3
  
  
  
  
  
  
  
  
  