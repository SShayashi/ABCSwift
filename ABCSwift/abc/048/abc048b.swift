func abc048b() -> Int{
    let abx = readLine()!.toSepIntList()
    let bx = abx[1] / abx[2]
    let ax = abx[0] / abx[2]
    if abx[0] % abx[2] == 0 {
        return bx - ax + 1
    } else {
        return bx - ax
    }
}

