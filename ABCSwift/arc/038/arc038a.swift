func arc038a() -> Int {
    let N = readInt()
    var A = readInts()
    A.sort{$0 > $1}
    var ans = 0
    for i in stride(from: 0, to: N, by: 2){
        ans += A[i]
    }
    return ans
}

