
func codefes2016finalb(){
    let N = Int(readLine()!)!
    var sum = 0
    var num = 0
    for n in 1...N{
        sum += n
        if (sum >= N) {
            num = n
            break
        }
    }
    let exnum = sum - N
    for i in 1...num{
        if i == exnum{
            continue
        }
        print(i)
    }
}
