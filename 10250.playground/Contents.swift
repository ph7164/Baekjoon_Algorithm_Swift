// 10250 : ACM 호텔

let tc = Int(readLine()!)!

for _ in 0 ..< tc {
    let input = readLine()!.split(separator: " ")
    let h = Int(input[0])!
    let w = Int(input[1])!
    let n = Int(input[2])!
    
    var roomFloor = 0
    var roomNumber = 0
    var result = ""
    
    if n % h == 0 {
        roomFloor = h
        roomNumber = n / h
    } else {
        roomFloor = n % h
        roomNumber = (n / h) + 1
    }
    
    result += String(roomFloor)
    if roomNumber < 10 {
        result += "0"+String(roomNumber)
    } else {
        result += String(roomNumber)
    }
    
    print(result)
}
