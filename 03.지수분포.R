###  Ch06.확률분포

###  2020/05/01 keonwoo park

## 03.지수분포

# 지수분포의 평균 u = 1/lambda

# pexp(q=대기시간, rate=평균발생건수(lambda))
# 서비스센터:5분에 1.5회
# 1분 P(X <= 1/5) 이내로 받을 확률

pexp(q=1/5, rate=1.5, lower.tail = TRUE)

# 95%확률로 받을 수 있는 시간
qexp(p =0.95, rate= 1.5, lower.tail= TRUE)
x <- seq(0,3, length =500)
plot(x,
     dexp(x, 1.5),
     type ='l',
     ylim = c(0,1.5))
abline(v=0.2,
       h=0.5,
       col='red',
       lty=1)
# 10분에 평균 2회 전화, 3분이내일 확률 (P(X<=3/10))
pexp(q=3/10, rate=2, lower.tail= TRUE)
