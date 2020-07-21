

func disco2020b() -> Int {
    let N = Int(readLine()!)!
    let A = readLine()!.toIntList()
    var left = 0
    var right = N-1
    var diff = 0
    while left <= right {
        if diff < 0 {
            diff += A[left]
            left += 1
        }else{
            diff -= A[right]
            right -= 1
        }
    }
    return abs(diff)
}
