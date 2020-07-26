func codefes2017a() -> String {
    let NMK = readLine()!.toSepIntList()
    let N = NMK[0]
    let M = NMK[1]
    let K = NMK[2]
    var tmp = 0
    for n in 0...N{
        for m in 0...M{
            var x = n*(M-m)
            var y = m*(N-n)
            if (x+y) == K{
                return "Yes"
            }
        }
    }
    return "No"
}
