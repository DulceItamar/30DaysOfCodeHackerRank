import UIKit



import Foundation

/*
 Complete the factorial function in the editor below. Be sure to use recursion.

 factorial has the following paramter:

 int n: an integer
 Returns

 int: the factorial of
 Note: If you fail to use recursion or fail to name your recursive function factorial or Factorial, you will get a score of 0.
 */

func factorial(n: Int) -> Int {
   
   if n == 0 || n == 1 {
       return 1
   } else {
       return n * factorial(n: n - 1)
   }
   
 

}

let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
let fileHandle = FileHandle(forWritingAtPath: stdout)!

guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

let result = factorial(n: n)

fileHandle.write(String(result).data(using: .utf8)!)
fileHandle.write("\n".data(using: .utf8)!)

