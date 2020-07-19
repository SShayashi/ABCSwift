func agc016a() -> Int{
    var S = readLine()!
    let N = S.count
    let counter = S.counter()
    var answer = 999
    for c in counter.keys{
        var t = S
        var a = 0
        while t.count(c: c) != t.count {
            var tmp = ""
            for i in 0..<t.count-1 {
                let index = t.index(t.startIndex, offsetBy: i)
                let indexPlus = t.index(t.startIndex, offsetBy: i+1)
                if t[index] == c || t[indexPlus] == c{
                    tmp.append(c)
                } else {
                    tmp.append(t[index])
                }
            }
            a += 1
            t = tmp
        }
        answer = min(a, answer)
    }
    return answer
}
