import Cocoa
// Test Euler's Projects

// Find Prime Numbers upto number n

var primeNumbers = PrimeNumbers()
print("Prime Numbers: \(String(describing: primeNumbers.findPrimeNumbers(forInput: 50)))")

var factorsOfNumber = 600851475143
print("Factors of \(factorsOfNumber) are: \(String(describing: primeNumbers.findFactors(of: factorsOfNumber)))")
print("Largest Prime Factor of \(factorsOfNumber): \(String(describing: primeNumbers.findLargestPrimeFactor(of: factorsOfNumber)))")
