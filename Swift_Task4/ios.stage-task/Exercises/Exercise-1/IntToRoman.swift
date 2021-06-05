import Foundation

public extension Int {
    
    var roman: String? {
        if self <= 0 {
            return nil
        }
        
        let decimals = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
        let romans = ["M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I"]

        var number = self
        var result = ""        

        while number > 0 {
            for (index, decimal) in decimals.enumerated() {
                if number - decimal >= 0 {
                    number -= decimal
                    result += romans[index]
                    break
                }
            }
        }
        return result
    }
}
