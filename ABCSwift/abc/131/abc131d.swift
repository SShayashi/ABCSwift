func abc131d() -> String {
    let N = Int(readLine()!)!
    var AB = [[Int]](repeating: [], count: N)
    var now = 0
    for i in 0..<N{ AB[i].append(contentsOf: readLine()!.toSepIntList()) }
    AB.sort { (a, b) -> Bool in
        return a[1] < b[1]
    }
    for ab in AB {
        now += ab[0]
        if now > ab[1] {
            return "No"
        }
    }
    return "Yes"
}
