func abc079a() -> String {
    let N = readLine()!.toIntList()
    if N[0] == N[1] && N[1] == N[2] {
        return "Yes"
    }
    if N[1] == N[2] && N[2] == N[3] {
        return "Yes"
    }
    return "No"
}
