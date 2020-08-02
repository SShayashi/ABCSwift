func abc153e() -> Int {
    let HN = readLine()!.toSepIntList()
    let H = HN[0]
    let N = HN[1]
    var AB = [[Int]](repeating: [], count: N)
    var dp = [Int](repeating: pow(10, 10), count: H+1)
    for i in 0..<N{
        AB[i].append(contentsOf: readLine()!.toSepIntList())
    }
    
    dp[H] = 0
    for i in stride(from: H, to: -1, by: -1){
        for ab in AB {
            if (i-ab[0]) <= 0 {
                dp[0] = min(dp[0], dp[i] + ab[1])
            } else {
                dp[i-ab[0]] = min(dp[i-ab[0]], dp[i] + ab[1])
            }
        }
    }
    return dp[0]
}
