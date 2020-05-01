###  Ch06.확률분포

###  2020/05/01 keonwoo park

## 04.정규분포

# 평균50, 표준편차 20 점

# 난수함수 : rnorm(n, mean=0, sd= 1) #평균 0, 표준편차 1인 랜덤값(정규분포) 
# 확률밀도함수: d~
# 누적분포함수(점수): p~
# 누적분포함수(확률): q~

# 난수함수: rnorm(n, mean = 0, sd= 1)
x <- rnorm(100, 50, 20)
x <- sort(x)

plot(x,
     dnorm(x, 50,20),
     type = 'l',
     main="정규분포,X~N(50, 20)")
abline(v=50, col='blue',lty=3)
abline(v=50+1.96*20, col='red',lty=3)
abline(v=50-1.96*20, col='red',lty=3)
# 만약 60점이라면
pnorm(60, mean=50, sd=20, lower.tail = TRUE)
pnorm(60, mean=50, sd=20, lower.tail = FALSE)
abline(v=60, col='red',lty=3)


# 누적분포함수(확률)
# qnorm(p, mean=0, sd=1, lower.tail =TRUE)

qnorm(0.35, mean=50, sd=20, lower.tail = TRUE)


# 표준정규분포 그래프
x <- seq(-3, 3, length=200)
plot(x,
     dnorm(x, mean=0, sd= 1),
     type = 'l',
     main = '표준정규분포')
