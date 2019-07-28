// 1193 : 분수찾기

var n = Int(readLine()!)!

var i = 0

while true {
    if n - i > 0 {
        n = n - i
        i += 1
    } else {
        if i % 2 == 0 {
            n = n - 1
            print("\(1 + n)/\(i - n)")
        } else {
            n = n - 1
            print("\(i - n)/\(1 + n)")
        }
        break
    }
}
