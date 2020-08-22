func abc176a() -> Int{
    let NXT = readLine()!.toSepIntList()
    if NXT[0] % NXT[1] == 0{
        return (NXT[0] / NXT[1]) * NXT[2]
    } else {
        return (NXT[0] / NXT[1] ) * NXT[2] + NXT[2]
    }
}
