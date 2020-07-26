
func arc006b() -> Int{
    let NL = readLine()!.toSepIntList()
    var G:[[String]] = []
    for i in 0..<NL[1]{
        var p = readLine()!.toStrList()
        p.insert(" ", at: 0)
        p.append(" ")
        G.append(p)
    }
    var O = readLine()!.toStrList()
    O.insert(" ", at: 0)
    O.append(" ")
    
    for i in stride(from: 1, to: G.first!.count, by: 2){
        var point = i
        for y in 0..<NL[1]{
            if G[y][point+1] == "-"{
                point += 2
                continue
            }
            if G[y][point-1] == "-"{
                point -= 2
                continue
            }
        }
        if O[point] == "o"{
            return (i / 2) + 1
        }
    }
    return -1
}
