func abc003c() -> Double{
    let NK = readLine()!.toIntList()
    var R = readLine()!.toDoubleList()
    R.sort()
    var ans = 0.0
    for i in stride(from: R.count - NK[1], to: R.count, by: 1){
        ans = (R[i]+ans) / 2.0
    }
    
    return ans
}
