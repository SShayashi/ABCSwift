func abc015c() -> String {
    let NK = readLine()!.toSepIntList()
    var T:[[Int]] = []
    for _ in 0..<NK[0]{
        T.append(readLine()!.toSepIntList())
    }
    
    if NK[1] == 1{
        var tmp = T[0][0]
        for j in 1..<NK[0]{
            tmp = tmp ^ T[j][0]
        }
        if tmp == 0{
            return "Found"
        }else{
            return "Nothing"
        }
    }

    var max = pow(NK[1], NK[0])
    for i in 0..<max{
        let bin = i.toNBin(NK[1]).zFill(n: NK[0]).toIntList()
        var tmp = T[0][bin[0]]
        for j in 1..<NK[0]{
            tmp = tmp ^ T[j][bin[j]]
        }
        if tmp == 0{
            return "Found"
        }
    }
    return "Nothing"
}
