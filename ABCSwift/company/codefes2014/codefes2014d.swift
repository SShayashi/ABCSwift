func codefes2014d(){
    let A = Int(readLine()!)!
    if A == 1{
        print("1", "1")
        return
    }
    let MAX = 2 * pow(10, 9)
    if A > MAX {
        print("-1", "-1")
        return
    }
    print("\(A+1)", "2")
    return
}
