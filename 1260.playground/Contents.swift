// 1260 : DFS와 BFS

var graph: [[Int]] = [[]]
var check: [Bool] = []

let input = readLine()!.split(separator: " ").map{x in Int(x)!}
let N = input[0]
let M = input[1]
let V = input[2]
graph = [[Int]].init(repeating: [], count: N + 1)
check = [Bool].init(repeating: false, count: N + 1)

for _ in 0..<M {
    let edges = readLine()!.split(separator: " ").map{x in Int(x)!}
    let u = edges[0]
    let v = edges[1]
    
    graph[u].append(v)
    graph[v].append(u)
}

for i in 1...N {
    graph[i].sort()
}

func dfs(_ x: Int) {
    check[x] = true
    print(x, terminator: " ")
    for i in 0..<graph[x].count {
        let next = graph[x][i]
        if !check[next] {
            dfs(next)
        }
    }
}

func bfs(_ start: Int) {
    var queue: [Int] = []
    check[start] = true
    queue.append(start)
    
    while !queue.isEmpty {
        let x = queue.removeFirst()
        print(x, terminator: " ")
        for next in graph[x] {
            if !check[next] {
                check[next] = true
                queue.append(next)
            }
        }
    }
}

dfs(V)
print()
check = [Bool].init(repeating: false, count: N + 1)
bfs(V)

