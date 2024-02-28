import UIKit

/*
 Given an integer, , print its first  multiples. Each multiple  (where ) should be printed on a new line in the form: n x i = result.
 */

guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

for number in 1...10 {
    print("\(n) x \(number) = \(n * number)")
}


