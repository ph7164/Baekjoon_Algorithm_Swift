// 2292 : 벌집

let input = Int(readLine()!)!

var cur = 1
var result = 1
var inc = 6

while true {
    if input <= cur {
        break
    }
    result += 1
    cur += inc
    inc += 6
}

print(result)
