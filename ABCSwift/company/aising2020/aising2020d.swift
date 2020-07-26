import Foundation
func D() {
//    let N = Int(readLine()!)!
//    let X = readLine()!.toList()
    let N = 100000
    let X = Array(repeating: "1", count: N)
    let R:[String] = X.reversed()
    var dp = Array(repeating: 0, count: N+1)
    func popcount(n:Int) -> Int{
        var result = n
        var cnt = 0
        while result != 0 {
            let bin = result.toBin()
            let count = bin.toStrList().count(n: "1")
            result %= count
            cnt += 1
        }
        return cnt
    }
    
    var total = 0
    var baseCnt = X.count(n: "1")
    for i in 1...N {
        total = (total + (2 << i)) % (baseCnt+1)
    }
    
    
    for i in 0..<N{
        dp[i] = popcount(n: i)
    }
    for i in 0..<N{
        if X[i] == "1" {
            let a = total - pow(2.0, (N-1-i).toD()).toI()
            let b = baseCnt - 1
            if b == 0 {
                print(0)
                continue
            }
            let c = a % b
            print(dp[c] + 1)
            continue
        }
        
        let x = total + pow(2, (N-1-i).toD()).toI()
        let y = x % (baseCnt+1)
        print(dp[y] + 1)
    }
}
