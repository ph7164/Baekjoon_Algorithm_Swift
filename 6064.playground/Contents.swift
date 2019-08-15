// 6064 : 카잉 달력

let tc = Int(readLine()!)!

for _ in 0 ..< tc {
    let input = readLine()!.split(separator: " ").map{x in Int(x)!}
    
    let M = input[0]
    let N = input[1]
    var x = input[2]
    var y = input[3]
    
    while true {
        if x == y {
            print(x)
            break
        }
        else if x > M * N {
            print("-1")
            break
        }
        
        if x < y {
            x += M
        } else {
            y += N
        }
    }
    
}

