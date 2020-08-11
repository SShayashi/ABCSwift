func abc089b() -> String{
    let N = readInt()
    let S = readLine()!.toSepStrList()
    if S.count(n: "P") > 0 && S.count(n: "W") > 0 && S.count(n: "G") > 0 && S.count(n: "Y") > 0{
        return "Four"
    } else {
        return "Three"
    }
}
