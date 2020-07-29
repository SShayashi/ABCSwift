func arc036a() -> Int{
    let NK = readLine()!.toSepIntList()
    var T = [Int]()
    for _ in 1...NK[0]{
        let t = Int(readLine()!)!
        T.append(t)
    }
    
    var sum = T[0] + T[1]
    for i in 2..<NK[0]{
        sum += T[i]
        if sum < NK[1]{
            return i+1
        }
        sum -= T[i-2]
    }
    return -1
}
