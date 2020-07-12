import Foundation
func C() {
    let N = Int(readLine()!)!
    let MAX = 100
    var memo = Array(repeating: 0, count: N+1)
    for x in 1...MAX{
        for y in 1...MAX{
            for z in 1...MAX{
                let a = pow(Double(x), 2.0) + pow(Double(y), 2.0) + pow(Double(z), 2.0)
                let b = x*y + y*z + z*x
                let c = Int(a) + b
                if c > N {
                    continue
                }
                memo[c] += 1
            }
        }
    }
    for i in 1...N{
        print(memo[i])
    }
}
