func abc176c() -> Int{
    let N = readInt()
    let A = readInts()
    if N == 1 {
        return 0
    }
    
    var sum = 0
    var prev = A[0]
    for i in 1..<N{
        if A[i] < prev {
            sum += (prev - A[i])
            prev = A[i] + (prev - A[i])
            continue
        }
        prev = A[i]
    }
    return sum
}
