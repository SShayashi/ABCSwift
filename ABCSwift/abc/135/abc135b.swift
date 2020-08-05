func abc135b() -> String {
    let N = Int(readLine()!)!
    let P = readLine()!.toSepIntList()
    var a = 0
    for i in 1...N {
        if P[i-1] != i {
            a += 1
        }
    }
    if a <= 2 {
        return "YES"
    } else {
        return "NO"
    }
}
