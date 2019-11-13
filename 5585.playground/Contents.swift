// 5585 : 거스름돈

var money = Int(readLine()!)!

money = 1000 - money

let change = [500, 100, 50, 10, 5, 1]

var quotient = 1
var cnt = 0
var i = 0

while true {
    quotient = money / change[i]
    cnt += quotient
    
    if quotient == 0 {
        i += 1
        continue
    }
    
    money = money % change[i]
    if money == 0 {
        break
    }
}

print(cnt)
