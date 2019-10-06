import Foundation

public struct Miscelaneous {
    
    public init() {}
    // If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
    // Find the sum of all the multiples of 3 or 5 below 1000.
    // https://projecteuler.net/problem=1
    public func multiplesOf3And5(forInput input: Int) -> Int {
        var result = [Int]()
        for i in 1..<input {
            if i%3 == 0 || i%5 == 0 {
                result.append(i)
            }
        }
        var sum = 0
        for j in result {
            sum = sum + j
        }
        return sum
    }
    
    // Binary representation of an integer number
    // https://www.interviewbit.com/problems/binary-representation/
    public func findDigitsInBinary(_ A: Int) -> String {
        var temp = A
        var result = ""
        while temp > 0 {
            result = "\(temp%2)" + result
            temp = temp/2
        }
        return result
    }

    
}
