
func disco2020c() -> [[String]]{
    let HWK = readLine()!.toIntList()
    let H = HWK[0]
    let W = HWK[1]
    var K = HWK[2]
    var G:[[String]] = []
    var ANS:[[Int]] = Array(repeating: Array(repeating: 0, count: W), count: H)
    for y in 1...H{
        let x = readLine()!.toList()
        G.append(x)
    }
    var isInStbY = false
    var width:[Int] = []
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
            list.append(y)
            yLists.append(list)
            list = []
        }else{
            list.append(y)
        }
    }
    if list.count > 0 {
        yLists.append(list)
    }
    
    func isInStrovery(_ yList:[Int],_ x:Int) -> Bool{
        for y in yList{
            if G[y][x].contains("#"){
                return true
            }
        }
        return false
    }
    for (index,yList) in yLists.enumerated(){
        var xLists:[[Int]] = []
        var xlist:[Int] = []
        var isInStbX = false
        
        var i = 0
        for x in 0..<W{
            if isInStrovery(yList, x){
                xlist.append(x)
                i = x+1
                break
            }
            xlist.append(x)
        }
        
        for x in i..<W{
            if isInStrovery(yList, x){
                xlist.append(x)
                xLists.append(xlist)
                xlist = []
            }else{
                xlist.append(x)
            }
        }
        if xlist.count > 0 {xLists.append(xlist)}
        
        
        for xlist in xLists{
            for x in xlist{
                for y in yList{
                    ANS[y][x] = K
                }
            }
            K -= 1
        }
    }
    
    for y in 0..<H{
        for x in 0..<W{
            print(ANS[y][x],terminator: "")
        }
        print("")
    }
    
    
    return G
}

