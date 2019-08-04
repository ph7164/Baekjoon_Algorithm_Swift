// 2869 : 달팽이는 올라가고 싶다

let input = readLine()!.split(separator: " ").map{x in Int(x)!}

let A = input[0]
let B = input[1]
let V = input[2]

var day = 0

day = (V - B - 1) / (A - B) + 1

print(day)
