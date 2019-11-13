// 11399 : ATM

let tc = Int(readLine()!)!

var arr = [Int]()
var result = 0

let input = readLine()!.split(separator: " ").map{x in Int(x)!}
for i in 0..<input.count {
    arr.append(input[i])
}

arr.sort{$0 < $1}

for i in 0..<arr.count {
    for j in 0...i {
        result += arr[j]
    }
}

print(result)
