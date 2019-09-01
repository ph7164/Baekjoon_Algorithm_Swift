// 15954 : 인형들

import Foundation

let input = readLine()!.split(separator: " ").map{x in Int(x)!}

let N = input[0]
let K = input[1]

var arrN = [Int]()
var result = [Double]()

let inputN = readLine()!.split(separator: " ").map{x in Int(x)!}

for i in 0 ..< N {
    arrN.append(inputN[i])
}

for l in K ... N {
    for i in 0 ... N - l {
        var avg: Double = 0
        var variance: Double = 0
        
        for j in i ..< i + l  {
            avg += Double(arrN[j])
        }
        
        avg = avg / Double(l)
        
        for j in i ..< l + i {
            variance += (Double(arrN[j]) - avg) * (Double(arrN[j]) - avg)
        }
        
        variance = variance / Double(l)
        
        result.append(sqrt(variance))
    }
}


print(result.min()!)
