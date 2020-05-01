###  Ch06.확률분포

###  2020/05/01 keonwoo park

## 02.포아송분포

# 랜덤하게 선택한 일정한 단위시간이나 공간 내에 발생하는 사건의 개수를 설명.
# 단위시간당 도착에 대한 모델에 사용한다.
# 대기시간 모형에서 많이 사용 (역수는 지수분포)

dpois(x=0, lambda = 1.5)
dpois(x=1, lambda = 1.5)
dpois(x=2, lambda = 1.5)
dpois(x=3, lambda = 1.5)
dpois(x=4, lambda = 1.5)
dpois(x=5, lambda = 1.5)

# 포아송 분포 확률밀도함수 그래프
plot(dpois(x=c(0:10), lambda = 1.5),
     type = 'h',
     lwd = 5,
     col = 'red',
     xlab = '성공확률 X',
     main = '포아송분포')

#포아송분포 누적확률계산
# 이하 : P(X <= a) lower.tail = TRUE
# 2회 이상 받을 확률: P(X > 1) 확률 계산
ppois(q = 1, lambda = 1.5, lower.tail= FALSE)
# lambda = 평균 발생건수
# 퀴즈 10분동안 2회이상 전화올 확률
ppois(q = 2, lambda = 2,lower.tail = TRUE)





