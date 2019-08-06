// 1011 : Fly me to the Alpha Centauri

let tc = Int(readLine()!)!

for _ in 0..<tc {
    let input = readLine()!.split(separator: " ")
    
    var dist = Int(input[1])! - Int(input[0])!
    var cnt = 0
    var speed = 1
    
    while dist > 0 {
        if dist <= speed {
            cnt += 1
            break
        } else if dist < 2 * speed {
            cnt += 2
            break
        } else {
            dist -= 2 * speed
            cnt += 2
        }
        speed += 1
    }
    
    print(cnt)
}
