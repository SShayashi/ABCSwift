func abc176b() -> String {
    let N = readLine()!.toIntList()
    var sum = 0
    for i in N {
        sum += i
    }
    if sum % 9 == 0 {
        return "Yes"
    } else {
        return "No"
    }
}
