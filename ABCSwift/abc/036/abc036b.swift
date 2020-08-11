func abc036b() {
    let N = readInt()
    var G = [[String]]()
    var ANS = [[String]](repeating: [String](repeating: "", count: N) , count: N)
    for _ in 0..<N{
        let x = readLine()!.toStrList()
        G.append(x)
    }
    
    for y in 0..<N{
        for x in 0..<N{
            ANS[x][N-1-y] = G[y][x]
        }
    }
    for ans in ANS{
        print(ans.joined())
    }
    return
}
