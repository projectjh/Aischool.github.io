# 상품정보를 입력받아 판매금액을 계산한 다음 출력하는 프로그램을 작성하시오.

# <처리 조건>
# 1. 제품 코드에 exit를 입력받으면 입력을 끝낸다.
# 2. 입력이 끝나면 입력받은 데이터 전체를 출력한다.
# 3. 마지막에 총 판매금액을 구해서 출력한다.
# 4. 판매금액 = 수량 * 단가

# <입력 형식>
# ___ :
# 제품 코드 입력 => A002
# 제품명 입력 => 휴대폰
# 수량 입력 => 8
# 단가 입력 => 90000

# 제품 코드 입력 => exit

# <출력 형식>
#             *** 상품정보 ***
# =========================================
# 제품코드   제품명   수량     단가      판매금액
# =========================================
# C001     노트북     7     70000     490000
# A002     휴대폰     8     90000     720000
# =========================================
#                           총 금액: 1210000

lst = []
p_sum = 0
while True:
    prd = {}

    prd['code'] = input("제품코드 입력 => ")
    if prd['code'] == "exit":
        break

    prd['name'] = input("제품명 입력 => ")
    prd['amount'] = int(input("수량 입력 => "))
    prd['unit'] = int(input("단가 입력 => "))
    prd['price'] = prd['amount'] * prd['unit']

    p_sum += prd['price']
    lst.append(prd)
    print()

# print(p_sum)
print("            *** 상품정보 ***            ")
print("=========================================")
print("제품코드   제품명   수량     단가     판매금액")
print("=========================================")
for data in lst:
    print("%4s   %5s    %2d    %6d    %7d" %
          (data['code'], data['name'], data['amount'], data['unit'], data['price']))
print("=========================================")
print("                        총 금액: {:,}".format(p_sum))

