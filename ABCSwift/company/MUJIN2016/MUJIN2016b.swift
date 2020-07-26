import Foundation
func MUJIN2016b()->Double{
    let OABC = readLine()!.toSepDoubleList()
    let A = OABC[0]
    let B = OABC[1]
    let C = OABC[2]
    var diff = 0.0
    if A > B && A > C{
        diff = A - B - C
        if diff < 0{return pow(A+B+C , 2)*Double.pi}
        return pow(A+B+C , 2)*Double.pi - pow(A-B-C, 2)*Double.pi
    } else if B > A && B > C{
        diff = B - A - C
        if diff < 0{return pow(A+B+C , 2)*Double.pi}
        return pow(A+B+C , 2)*Double.pi - pow(B-C-A, 2)*Double.pi
    } else {
        diff = C - A - B
        if diff < 0{return pow(A+B+C , 2)*Double.pi}
        return pow(A+B+C , 2)*Double.pi - pow(C-A-B, 2)*Double.pi
    }
}
