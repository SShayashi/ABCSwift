import Foundation
func abc011c() -> String{
    var N = Int(readLine()!)!
    let NG1 = Int(readLine()!)!
    let NG2 = Int(readLine()!)!
    let NG3 = Int(readLine()!)!
    let NG = [NG1, NG2, NG3]
    if NG.contains(N){
        return "NO"
    }
    for i in 1...100 {
        if !NG.contains(N-3){
            N -= 3
            continue
        }
        
        if !NG.contains(N-2){
            N -= 2
            continue
        }
        
        if !NG.contains(N-1){
            N -= 1
        }
        return "NO"
    }
    if N > 0 {
        return "NO"
    }
    return "YES"
}
