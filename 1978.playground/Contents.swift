// 1978 : 소수 찾기

var N = Int(readLine()!)!
let numbers = readLine()!.split(separator: " ").map{x in Int(x)!}
var cnt = 0

func isPrime(_ input: Int) -> Int {
    if input == 1 {
        return 0
    }
    for n in 2 ..< input {
        if input % n == 0 {
            return 0
        }
    }
    return 1
}

for num in numbers {
    cnt += isPrime(num)
}

print(cnt)
