// 2020 카카오공채 2번 괄호변환

import Foundation

func solution(_ p:String) -> String {
    
    let str = p.map{$0}
    
    // 입력이 빈 문자열일 경우 빈 문자열을 반환한다.
    if p == "" {
        return ""
    }
    
    // a는 여는 괄호, b는 닫는 괄호를 세기 위한 변수.
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
        
        // a 와 b가 같은 경우 하나의 균형잡힌 괄호 쌍이 완성.
        if a == b {
            var cnt = 0
            var bal = true
            
            // 균형잡힌 문자열을 찾기 위해 카운팅. 만약 카운팅 중 음수가 나온다면 틀린 문자열.
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
                // 올바른 괄호 문자열인 경우, 처음부터 확인한 문자열까지가 문자열 u, 뒷부분이 v로 분리.
                let index1 = p.index(p.startIndex, offsetBy: i + 2)
                let index2 = p.index(index1, offsetBy: p.count-i-2)
                
                let sub1 = p[..<index1]
                let sub2 = p[index1..<index2]
                
                // 문자열 v에 대해 처음부터 다시 수행.
                return sub1 + solution(String(sub2))
            } else {
                // 올바른 괄호 문자열이 아닌 경우,
                let index1 = p.index(p.startIndex, offsetBy: i + 2)
                let index2 = p.index(index1, offsetBy: p.count-i-2)
                
                let sub2 = p[index1..<index2]
                
                // 빈 문자열에 '(' 붙임
                var ret = "("
                // 문자열 v에 대해 1단계부터 재귀적으로 수행한 결과 붙임
                ret += solution(String(sub2))
                // ')'를 다시 붙임
                ret += ")"
                
                // u의 첫번째와 마지막 문자를 제거하고, 나머지 문자열의 괄호 방향을 뒤집어서 붙임.
                for j in 1..<i+1 {
                    if str[j] == "(" {
                        ret += ")"
                    } else {
                        ret += "("
                    }
                }
                
                // 생성된 문자열 반환.
                return ret
            }
        }
    }
    
    return ""
}
