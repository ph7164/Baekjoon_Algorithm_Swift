// 1085 : 직사각형에서 탈출

let input = readLine()!.split(separator: " ").map{x in Int(x)!}

let x = input[0]
let y = input[1]
let w = input[2]
let h = input[3]

var smallx = 0
var smally = 0
var result = 0

if x > w - x {
    smallx = w - x
} else {
    smallx = x
}

if y > h - y {
    smally = h - y
} else {
    smally = y
}

if smallx > smally {
    result = smally
} else {
    result = smallx
}

print(result)
