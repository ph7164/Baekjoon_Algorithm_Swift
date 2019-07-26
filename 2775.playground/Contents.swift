// 2775 : 부녀회장이 될테야

var apt = [[Int]]()
for i in 0 ... 14 {
    apt.append([])
    for j in 0 ... 13 {
        if i == 0 {
            apt[i].append(j + 1)
        } else if j == 0 {
            apt[i].append(1)
        } else {
            apt[i].append(apt[i - 1][j] + apt[i][j - 1])
        }
    }
}

let tc = Int(readLine()!)!

for _ in 0 ..< tc {
    
    let k = Int(readLine()!)!
    let n = Int(readLine()!)!
    
    print(apt[k][n - 1])
}
