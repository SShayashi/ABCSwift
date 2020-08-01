func abc133c(){
    let N = Int(readLine()!)!
    let A = readLine()!.toSepIntList()
    var X = Array(repeating: 0, count: N)
    let total = A.reduce(0, +)
    var sum = 0
    for i in stride(from: 1, to: N, by: 2){
        sum += A[i]
    }
    X[0] = total - 2*sum
    
    for i in 1..<N {
        X[i] = 2*A[i-1] - X[i-1]
    }
    X.dump()
}
