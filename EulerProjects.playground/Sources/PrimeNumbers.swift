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
    
    public func findFactors(of input: Int) -> [Int]? {
        var result = [Int]()
        var i: Int = 2
        var j = input
        
        while (j != 1) {
            if j%i == 0 {
                while j%i == 0 {
                    result.append(i)
                    j = j/i
                }
            }
            i = i + 1
        }
        return result
    }
    
    public func findLargestPrimeFactor(of input: Int) -> Int? {
        if let factors = findFactors(of: input) {
            return factors.last
        } else {
            return nil
        }
    }
}
