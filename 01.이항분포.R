###  Ch06.확률분포

###  2020/05/01 keonwoo park

## 01.이항분포

# 확률밀도함수: d~
# 누적분포함수(점수): p~
# 누적분포함수(확률): q~

# fortune 쿠키 성공사례
# 시행횟수 : 3명
# 성공확률: 90%
# P(X = a) 확률 계산

dbinom(0, size=3, prob=0.9)
dbinom(1, size=3, prob=0.9)
dbinom(2, size=3, prob=0.9)
dbinom(3, size=3, prob=0.9)

# 이항 분포 확률밀도 그래프
y <- dbinom(0:3, size=3, prob = 0.9)
plot(0:3, y,
     type='h',
     lwd=10,
     col='red',
     ylab='확률',
     xlab='성공확률 X',
     main = "이항분포")


# 이항분포 누적확률계산
# 이하: P(X <= a) lower.tail = TRUE
# 초과 : P(X > a) lower.tail = FALSE
# P(X <= 1) 이하로 받을 확률 

pbinom(1, size=3, prob= 0.9,lower.tail = TRUE) # 0명확률 + 1명확률
ㄹ
# P(X >= 1) 1명 이상 받을 확률
pbinom(0, size=3, prob= 0.9,lower.tail = FALSE)

# 누적 이항분포 그래프

plot(pbinom(0:3, size= 3, prob =0.9),
     type='h',
     lwd=5,
     col='red',
     main = '누적이항분포')


## 퀴즈
# 성공확률: 0.7 ,10명중 7명 이상: P(X >= 7) 확률 계산
pbinom(6, size=10, prob = 0.7, lower.tail = FALSE)

# 확률밀도함수
y <- dbinom(0:10, size=10, prob = 0.7)
plot(0:10, y,
     type='h',
     lwd=5,
     col='red',
     ylab='확률',
     xlab='성공확률 X',
     main = "이항분포")

#누적 이항분포 그래프
plot(pbinom(0:10, size= 10, prob =0.7),
     type='h',
     lwd=5,
     col='red',
     main = '누적이항분포')
