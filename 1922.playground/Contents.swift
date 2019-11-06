// 1922 : 네트워크 연결

struct Network {
    var s = 0
    var e = 0
    var c = 0
    
    init(s: Int, e: Int, c: Int) {
        self.s = s
        self.e = e
        self.c = c
    }
}

var group = [Int]()

func main() {
    let N = Int(readLine()!)!
    let M = Int(readLine()!)!
    
    var networks = [Network]()
    group = Array.init(repeating: 0, count: M + 1)
    var result = 0
    
    for i in 1 ... N {
        group[i] = i
    }
    
    for _ in 0 ..< M {
        let inputABC = readLine()!.split(separator: " ").map{x in Int(x)!}
        
        let a = inputABC[0]
        let b = inputABC[1]
        let c = inputABC[2]
        
        networks.append(Network.init(s: a, e: b, c: c))
    }
    
    networks.sort{ $0.c < $1.c }
    
    for i in 0 ..< M {
        let s = getGroup(n: networks[i].s)
        let e = getGroup(n: networks[i].e)
        
        if s == e {
            continue
        }
        
        group[e] = s
        result += networks[i].c
    }
    
    print(result)
}

func getGroup(n: Int) -> Int {
    if group[n] == n {
        return n
    }
    
    group[n] = getGroup(n: group[n])
    return group[n]
}

main()
