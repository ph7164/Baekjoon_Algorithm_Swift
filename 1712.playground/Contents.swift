// 1712 : 손익분기점

let input = readLine()!.split(separator: " ").map{x in Int(x)!}

let A = input[0]
let B = input[1]
let C = input[2]

if C - B <= 0 {
    print("-1")
}
else {
    print(A / (C - B) + 1)
}

