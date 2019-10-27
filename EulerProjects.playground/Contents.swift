import Cocoa
// Test Euler's Projects

// -------  -------  -------  -------  -------  //
// https://projecteuler.net/problem=1
// -------  -------  -------  -------  -------  //
let miscelaneous = Miscelaneous()
let inputNum = 1_000
print("Sum of multiple of 3 and 5 for input \(inputNum) are: \(String(describing: miscelaneous.multiplesOf3And5(forInput: inputNum)))")

// -------  -------  -------  -------  -------  //
// https://projecteuler.net/problem=2
// -------  -------  -------  -------  -------  //
let fibonacchi = Fibonacchi()
let fibonacchiSeqUpto = 10
if let fibonacchiSeq = fibonacchi.fibonacchi(fibonacchiSeqUpto) {
    print("Fibonacchi Sequence for \(fibonacchiSeqUpto):  \(String(describing: fibonacchiSeq))")
    print("Sum of Even numbers in Fibonacchi Sequence: \(fibonacchi.sumOfEvenValuedNumbers(forInput: fibonacchiSeq))")
}

if let fibSequenceUpto = fibonacchi.fibonacchiSeq(uptoNum: 4_000_000) {
    print("Sum of Even numbers in Fibonacchi Sequence upto \(fibSequenceUpto): \(fibonacchi.sumOfEvenValuedNumbers(forInput: fibSequenceUpto))")
}

// Find Prime Numbers upto number n
// -------  -------  -------  -------  -------  //
// https://projecteuler.net/problem=3
// -------  -------  -------  -------  -------  //
let primeNumbers = PrimeNumbers()
let inputPrimeNumbersUpto = 50
print("Prime Numbers upto \(inputPrimeNumbersUpto): \(String(describing: primeNumbers.findPrimeNumbers(forInput: inputPrimeNumbersUpto)))")

var factorsOfNumber = 600_851
print("Factors of \(factorsOfNumber) are: \(String(describing: primeNumbers.findFactors(of: factorsOfNumber)))")
print("Largest Prime Factor of \(factorsOfNumber): \(String(describing: primeNumbers.findLargestPrimeFactor(of: factorsOfNumber)))")

// -------  -------  -------  -------  -------  //
// Binary representation of an integer number
// https://www.interviewbit.com/problems/binary-representation/
// -------  -------  -------  -------  -------  //
var decimalNumber = 27
print("Binary representation of \(decimalNumber) is: \(String(describing: miscelaneous.findDigitsInBinary(decimalNumber)))")

// -------  -------  -------  -------  -------  //
// GOLDBACK's CONJECTURE
// -------  -------  -------  -------  -------  //
let goldbackConjectureInput = 10
print("Goldback's Conjecture output for input \(goldbackConjectureInput): \(primeNumbers.goldbackConjecture(forInput: goldbackConjectureInput))")

// -------  -------  -------  -------  -------  //
// Anagram
// -------  -------  -------  -------  -------  //

// Find Anagrams from inside an array
let anagramInput =  ["geeksquiz", "geeksforgeeks", "abcd", "forgeeksgeeks", "zuiqkeegs", "eat for BSE"]
let anagram = Anagram()
print("AnagramOutput: \(String(describing: anagram.isAnagram(input: anagramInput))) \n")
let anagramOutput = anagram.anagramsUsingDict(ofInput: anagramInput, searchWord: "geeksforgeeks")
print("Anagram Output: \(String(describing: anagramOutput))")

print("Dict Output for Anagram: \(anagram.inputStringToDict("roast beef"))")


