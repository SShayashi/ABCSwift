func caddi2018b() -> Int {
    let NHW = readLine()!.toSepIntList()
    var ans = 0
    for _ in 1...NHW[0]{
        let AB = readLine()!.toSepIntList()
        if AB[0] < NHW[1] || AB[1] < NHW[2] {
            continue
        }
        ans += 1
    }
    return ans
}
