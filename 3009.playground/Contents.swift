// 3009 : 네 번째 점

var xArr = [Int]()
var yArr = [Int]()
var xResult = 0
var yResult = 0

for _ in 1...3 {
    let input = readLine()!.split(separator: " ").map{x in Int(x)!}
    let x: Int = input[0]
    let y: Int = input[1]
    
    xArr.append(x)
    yArr.append(y)
}

func returnResult(arr: [Int]) -> Int{
    if arr[0] == arr[1] {
        return arr[2]
    } else if arr[1] == arr[2] {
        return arr[0]
    } else {
        return arr[1]
    }
}

xResult = returnResult(arr: xArr)
yResult = returnResult(arr: yArr)

print("\(xResult) \(yResult)")
