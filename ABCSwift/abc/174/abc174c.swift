func abc174c() -> Int {
    let K = Int(readLine()!)!
    var mod = 7 % K
    if mod == 0{
        return 1
    }
    for i in 1...K {
        mod = (mod*10 + 7) % K
        if mod == 0 {
            return i+1
        }
    }
    return -1
}
