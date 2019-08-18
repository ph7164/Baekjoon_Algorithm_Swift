// 2581 : 소수

let M = Int(readLine()!)!
let N = Int(readLine()!)!

var sum = 0
var min = 0
var cnt = 0

func isPrime(_ input: Int) -> Bool {
    if input == 1 {
        return false
    }
    for n in 2 ..< input {
        if input % n == 0 {
            return false
        }
    }
    return true
}

for num in M ... N {
    if isPrime(num) {
        sum += num
        if cnt == 0 {
            min = num
            cnt = 1
        }
    }
}

if cnt == 0 {
    print("-1")
} else {
    print(sum)
    print(min)
}
