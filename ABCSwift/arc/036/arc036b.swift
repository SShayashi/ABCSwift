func arc036b() -> Int {
    let N = Int(readLine()!)!
    var H = [Int]()
    for _ in 0..<N{H.append(Int(readLine()!)!)}
    var flag = 0
    var ans = 0
    var tmp = 0
    for i in 0..<N-1{
        if flag == 0 && H[i] < H[i+1] {
            tmp += 1
            continue
        }
        
        if flag == 0 && H[i] > H[i+1] {
            flag = 1
            tmp += 1
            continue
        }
        
        if flag == 1 && H[i] > H[i+1] {
            tmp += 1
            continue
        }
        
        if flag == 1 && H[i] < H[i+1] {
            ans = max(ans, tmp+1)
            flag = 0
            tmp = 1
            continue
        }
    }
    ans = max(ans, tmp+1)
    return ans
}
