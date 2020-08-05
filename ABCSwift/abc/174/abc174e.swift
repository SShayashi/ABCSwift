func abc174e() -> Int {
    let NK = readLine()!.toSepIntList()
    let N = NK[0]
    let K = NK[1]
    var A = readLine()!.toSepIntList()
    var left = 0, right = 1000000001
    while right-left > 1 {
        let mid = (left + right) / 2
        func f(_ x: Int) -> Bool {
            var now = 0
            for a in A { now += (a - 1) / x }
            return now <= K
        }
        if f(mid) { right = mid }
        else { left = mid  }
    }
    return right
}
