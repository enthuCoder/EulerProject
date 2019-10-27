import Foundation

// Given an array of strings, find all anagram pairs in the given array

// Anagrams can be quickly solved using MultiSet, which is an implementation using Dictionary
public struct Anagram {
    public init() {}
    
    // Return Tuple of anagrams from inside an Array
    public func isAnagram(input: [String]?) -> [(String, String)]? {
        var output = [(String, String)]()
        guard let input = input else {
            return nil
        }
        for (outerIndex, outerVal) in input.enumerated() {
            let outerValDict = inputStringToDict(outerVal)
            for (innerIndex, innerVal) in input.enumerated() where innerIndex > outerIndex {
                let innerValDict = inputStringToDict(innerVal)
                if innerValDict == outerValDict {
                    output.append((outerVal, innerVal))
                }
            }
        }
        return output
    }
    
    // Anagram using Swift Sets. Doesn't take into account repeating characters in anagram string
    public func anagramsUsingSet(ofInput words: [String], searchWord: String) -> [String]? {
        var output = [String]()
        let inputString: Set<Character> = Set.init(searchWord.map { $0 })
        for currentWord in words {
            let setOfCurrentWord = Set.init(currentWord.map { $0 })
            if setOfCurrentWord.isSubset(of: inputString) {
                output.append(currentWord)
            }
        }
        return output
    }
    
    public func anagramsUsingDict(ofInput words: [String], searchWord: String) -> [String]? {
        var output = [String]()
        let inputStringDict = inputStringToDict(searchWord)
        for currentWord in words {
            let dictOfCurrentWord = inputStringToDict(currentWord)
            if dictOfCurrentWord == inputStringDict {
                output.append(currentWord)
            }
        }
        return output
    }

    public func inputStringToDict(_ inputString: String) -> [Character: UInt] {
        var output = [Character: UInt]()
        
        for tempChar in inputString {
            if let _ = output.index(forKey: tempChar) {
                output[tempChar] = (output[tempChar])! + 1
            } else {
                output[tempChar] = 1
            }
        }
        
        return output
    }
}
