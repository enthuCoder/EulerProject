import Foundation

public class PrimeNumbers {
    
    public init() {}
    
    public func findPrimeNumbers(forInput input: Int) -> [Int]? {
        var result = [Int]()
        var isPrime = false
        
        for i in 2...input {
            isPrime = true
            for j in 2..<i {
                if i%j == 0 {
                    isPrime = false
                    break
                }
            }
            if isPrime {
                result.append(i)
            }
        }
        
        return result
    }
}
