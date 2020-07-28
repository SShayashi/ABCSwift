func arc011b(){
    let N = Int(readLine()!)!
    var W = readLine()!
    W = W.lowercased()
    W = W.replacingOccurrences(of: ".", with: "")
    W = W.replacingOccurrences(of: ",", with: "")
    let vowel = ["a", "i", "e", "u", "o", "y"]
    let consonant = [
        "z": "0",
        "r": "0",
        "b": "1",
        "c": "1",
        "d": "2",
        "w": "2",
        "t": "3",
        "j": "3",
        "f": "4",
        "q": "4",
        "l": "5",
        "v": "5",
        "s": "6",
        "x": "6",
        "p": "7",
        "m": "7",
        "h": "8",
        "k": "8",
        "n": "9",
        "g": "9",
    ]
    
    for c in vowel{ W = W.replacingOccurrences(of: c, with: "") }
    for (key,value) in consonant{ W = W.replacingOccurrences(of: key, with: value)}
    let ans = W.split(separator: " ").map{ String($0)}
    if ans.count == 0{
        print("")
        return
    }
    for a in 0..<ans.count-1{
        print(ans[a], terminator: " ")
    }
    print(ans.last!)
    return
}
