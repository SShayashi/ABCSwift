func abc174d() -> Int{
    let N = Int(readLine()!)!
    var C = readLine()!.toStrList()
    var left = 0
    var right = N-1
    var ans = 0
    while left < right {
        if C[left] == "W" && C[right] == "R" {
            C[left] = "R"
            C[right] = "W"
            ans += 1
            
            left += 1
            right -= 1
            continue
        }
        if C[left] == "R"{
            left += 1
        }
        if C[right] == "W" {
            right -= 1
        }
    }
    return ans
    
}
