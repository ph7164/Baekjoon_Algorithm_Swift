// 1197 : 최소 스패닝 트리

struct Edge {
    var s = 0
    var e = 0
    var w = 0
    
    init(s: Int, e: Int, w: Int) {
        self.s = s
        self.e = e
        self.w = w
    }
    
}

var group = [Int]()

func main() {
    
    let inputVE = readLine()!.split(separator: " ").map{x in Int(x)!}
    let v = inputVE[0]
    let e = inputVE[1]
    
    var edges = [Edge]()
    group = Array.init(repeating: 0, count: v+1)
    var result = 0
    
    for i in 1 ... v {
        group[i] = i
    }
    
    for _ in 0 ..< e {
        
        let inputABC = readLine()!.split(separator: " ").map{x in Int(x)!}
        let a = inputABC[0]
        let b = inputABC[1]
        let c = inputABC[2]
        
        edges.append(Edge.init(s: a, e: b, w: c))
    }
    
    edges.sort { $0.w < $1.w }
    
    for i in 0 ..< e {
        
        let s = getGroup(n: edges[i].s)
        let e = getGroup(n: edges[i].e)
        
        if s == e {
            continue
        }
        
        group[e] = s
        result += edges[i].w
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
