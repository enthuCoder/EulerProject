import Foundation

public class PrimeNumbers {
    
    public init() {}
    
    // List of Prime numbers upto input number
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
    
    // List of prime factors of input
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
    
    // -------  -------  -------  -------  -------  //
    // GOLDBACK's CONJECTURE
    // https://en.wikipedia.org/wiki/Goldbach%27s_conjecture
    // Given an even number ( greater than 2 ), return two prime numbers whose sum will be equal to given number.
    // If there are more than one solutions possible, return the lexicographically smaller solution
    
    // If [a, b] is one solution with a <= b,
    // and [c,d] is another solution with c <= d, then
    // [a, b] < [c, d]
    // If a < c OR a==c AND b < d.
    // -------  -------  -------  -------  -------  //
    public func goldbackConjecture(forInput input: Int) -> [Int] {
        var result = [Int]()
        if let primeNumbers = findPrimeNumbers(forInput: input) {
            for i in primeNumbers {
                if primeNumbers.contains(input - i) {
                    result.append(i)
                    result.append(input-i)
                    break
                }
            }
        }
        return result
    }
    
}
