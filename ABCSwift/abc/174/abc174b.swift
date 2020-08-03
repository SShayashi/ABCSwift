func abc174b() -> Int{
    let ND = readLine()!.toSepIntList()
    let D = ND[1].toD()
    var ans = 0
    for _ in 1...ND[0] {
        let xy = readLine()!.toSepDoubleList()
        let d = distance(p1: [0,0], p2:xy)
        if d <= D {
            ans += 1
        }
    }
    
    return ans
}
