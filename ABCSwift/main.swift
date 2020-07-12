import Foundation

extension String {
    func toIntList() -> [Int] {
        return self.split(separator: " ").map{Int($0)!}
    }
    
    func toList() -> [String] {
        return self.map{String($0)}
    }
    
    func count(c:Character) -> Int{
        var result = 0

        for e in self{
            if e == c{
                result += 1
            }
        }
        return result
    }
}

extension Int {
    func toBin() -> String {
        return String(self, radix: 2)
    }
    
    func toD() -> Double {
        return Double(self)
    }
}

extension Double {
    func toI() -> Int {
        return Int(self)
    }
}

extension Array where Element: Equatable{
    func count(n:Self.Element) -> Int{
        var result = 0
        for e in self{
            if e == n{
                result += 1
            }
        }
        return result
    }
}



