func disco2020a() -> Int{
    let XY = readLine()!.split(separator: " ").map{Int($0)!}
    let X = XY[0]
    let Y = XY[1]
    let M:[Int] = [300000, 200000,100000]
    var ans = 0
    if X < 4 {ans += M[X-1]}
    if Y < 4 {ans += M[Y-1]}
    if (X == 1 && Y == 1){
        ans += 400000
    }
    return ans
}
