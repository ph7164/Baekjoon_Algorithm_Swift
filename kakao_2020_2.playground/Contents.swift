// 2020 카카오공채 2번 괄호변환

import Foundation

func solution(_ p:String) -> String {
    
     let str = p.map{$0}
    
    if p == "" {
        return ""
    }
    
    var a = 0
    var b = 0
    
    for i in stride(from: 0, to: p.count, by: 2) {
       
        if str[i] == "(" {
            a += 1
        } else {
            b += 1
        }
        
        if str[i + 1] == "(" {
            a += 1
        } else {
            b += 1
        }
        
        if a == b {
            var cnt = 0
            var bal = true
            
            for j in 0 ..< i + 2 {
                if str[j] == "(" {
                    cnt += 1
                } else {
                    cnt -= 1
                }
                if cnt < 0 {
                    bal = false
                }
            }
            
            if bal {
                let index1 = p.index(p.startIndex, offsetBy: i + 2)
                let index2 = p.index(index1, offsetBy: p.count-i-2)
                
                let sub1 = p[..<index1]
                let sub2 = p[index1..<index2]
                
                return sub1 + solution(String(sub2))
            } else {
                let index1 = p.index(p.startIndex, offsetBy: i + 2)
                let index2 = p.index(index1, offsetBy: p.count-i-2)
                
                let sub2 = p[index1..<index2]
                
                var ret = "("
                ret += solution(String(sub2))
                ret += ")"
                
                for j in 1..<i+1 {
                    if str[j] == "(" {
                        ret += ")"
                    } else {
                        ret += "("
                    }
                }
                
                return ret
            }
        }
    }
    
    return ""
}
