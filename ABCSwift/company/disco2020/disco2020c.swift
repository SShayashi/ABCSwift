
func disco2020c() {
    let HWK = readLine()!.toSepIntList()
    let H = HWK[0]
    let W = HWK[1]
    var K = HWK[2]
    var G:[[String]] = []
    var ANS:[[Int]] = Array(repeating: Array(repeating: 0, count: W), count: H)
    for _ in 1...H{ G.append(readLine()!.toStrList())}
    var yLists:[[Int]] = []
    var list:[Int] = []
    var i = 0
    for y in 0..<H{
        if G[y].contains("#"){
            list.append(y)
            i = y+1
            break
        }
        list.append(y)
    }
    for y in i..<H{
        if G[y].contains("#"){
            yLists.append(list)
            list = [y]
        }else{
            list.append(y)
        }
    }
    if list.count > 0 { yLists.append(list)}
    func isInStrovery(_ yList:[Int],_ x:Int) -> Bool{
        for y in yList{
            if G[y][x].contains("#"){
                return true
            }
        }
        return false
    }
    for yList in yLists{
        var xLists:[[Int]] = []
        var xl:[Int] = []
        var i = 0
        for x in 0..<W{
            if isInStrovery(yList, x){
                xl.append(x)
                i = x+1
                break
            }
            xl.append(x)
        }
        
        for x in i..<W{
            if isInStrovery(yList, x){
                xLists.append(xl)
                xl = [x]
            }else{
                xl.append(x)
            }
        }
        if xl.count > 0 {xLists.append(xl)}
        for xl in xLists{
            for x in xl{
                for y in yList{
                    ANS[y][x] = K
                }
            }
            K -= 1
        }
    }
    
    for y in 0..<H{
        for x in 0..<W{
            print(ANS[y][x],terminator: " ")
        }
        print("")
    }
}
