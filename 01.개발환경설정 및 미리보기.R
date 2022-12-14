head(iris)
plot(iris)
1+2

num1 = 1+2
num1 = "BigData"

num1 <- 2+3
num1


4 + 5 -> num1 # num1 = 9
num1

num1 <- 2+2 # comment 

iris
tail(iris)
#------22-11-25------------------------
#
  search() 
  help(iris)
  
  iris
  
  head(iris)#첫번째줄부터 6번째 줄까지 앞에부분만 보겠따 
  tail(iris)#첫번째줄부터 6번째 줄까지 뒤에부분만 보겠따 
  head(iris,10)#~10ea
  example(head)
  
  
  aaa <- head(iris,10) #  변수 aaa 에 iris 10 줄 넣겠다
  aaa
  
  ls() # 현재 memory 에 담겨져 있는거 ㄹ보는거 >>>>> environment 에 있긴 한데
  #커멘드 알아야 함 .
  
  rm(aaa) #remove memory(aaa) 위에 만든 aaa 지우기 
  
  
  #산술연산자 
  
  1+2

  2*4  
  32-53  
  34/2
  23.23/2.3  
  22%%4  #나머지 
  22%/%5 #몫 구하는법 
  2**2 #2의 2승
  2^2  #2의 2승
  sqrt(8) # Square root 
  abs(-10) # absolute 절대값 
  runif(10) # random 난수 (n)개 나옴 0<x<1    0이랑 1은 없음
  trunc(100.5) #소수점 이하 버림 
    
  # 정수로 100보다 적은 난수 10개 만들기 
  trunc( (runif(10) * 100 ))
  
  # 로또 645 숫자 생성하기 (숫자 1~45 까지 숫자 6개 생성 )
  trunc((runif(6)*100)*0.45) # 일케 말고 
  help(runif)  # help 찾아봤으면 min max 알수있음 
  trunc(runif(6,min=0,max=0.45)* 100 )
  #반올림 
  round(100.567) #101
  round(100.567223,2) #100.57
  round(100.567893,5) #100.5679
  help(round)
  
  # R의내장형 data 변수로 이미 만들어 져 있는것들 이제부터 DataSet 이라는 이름으로 쓸꺼임
  
  data()
  
  head(Nile)
  tail(Nile)  
  
  hist(Nile) # frequency 빈도수 보여주는 거. 정규분포
  # 모든 데이터는 정규분포식이 나오지 않으면 분석이 되지 않음 . 
  # 데이터를 받으면 먼저 확인하는게 정규분포식이 나오냐 안나오냐부터 확인 
  # data받고 head->tail -> plot 보고 hist 
  
  plot(iris) # 산포도 
  
  plot( #  $ = data colum 
    iris$Petal.Length
   ,iris$Sepal.Length
   ,col=iris$Species
       ) # 동그라미가 진한건 중복되어 있는거

  
  
  
  
  
  
  