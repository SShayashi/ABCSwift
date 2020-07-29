func hitachi2020b() -> Int{
    let ABM = readLine()!.toSepIntList()
    let A = readLine()!.toSepIntList()
    let B = readLine()!.toSepIntList()
    
    var sum = A.min()! + B.min()!
    for _ in 1...ABM[2]{
        let xyc = readLine()!.toSepIntList()
        sum = min(A[xyc[0]-1] + B[xyc[1]-1] - xyc[2], sum)
    }
    return sum
}
