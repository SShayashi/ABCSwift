func arc008a() -> Int {
    let N = Int(readLine()!)!
    let a = (N / 10) * 100
    return min(a + 100 , a + (N%10) * 15 )
}
