
func abc168c() -> Double {
    let ABHM = readLine()!.toSepDoubleList()
    let Mprob = ABHM[3] / 60
    let Hprob = (ABHM[2] / 12.0) + ((1/12) * Mprob)
    let Apoint = lotate(theta: 2.0*Double.pi*Hprob, point: [0, ABHM[0]])
    let Bpoint = lotate(theta: 2.0*Double.pi*Mprob, point: [0, ABHM[1]])
    return distance(p1: Apoint, p2: Bpoint)
}
