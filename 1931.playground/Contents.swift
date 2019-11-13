// 1931 : 회의실배정

struct Meeting {
    var s = 0
    var e = 0
    
    init(s: Int, e: Int) {
        self.s = s
        self.e = e
    }
}

func main() {
    let tc = Int(readLine()!)!
    
    var meetings = [Meeting]()
    var endTime = -1
    var cnt = 0
    
    for _ in 0 ..< tc {
        let input = readLine()!.split(separator: " ").map{x in Int(x)!}
        
        let s = input[0]
        let e = input[1]
        
        meetings.append(Meeting.init(s: s, e: e))
    }
        
    meetings.sort {
        if $0.e == $1.e {
            return $0.s < $1.s
        } else {
            return $0.e < $1.e
        }
    }
    
    for m in meetings {
        if endTime <= m.s {
            cnt += 1
            endTime = m.e
        }
    }
    
    print(cnt)
}

main()
