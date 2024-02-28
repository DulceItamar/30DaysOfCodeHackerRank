import UIKit

/*
 Given a string, , of length  that is indexed from  to , print its even-indexed and odd-indexed characters as  space-separated strings on a single line (see the Sample below for more detail).

 Note:  is considered to be an even index.
 */

let numStrings = Int(readLine()!)!

func printEvenAndOdd(string: String) {
    // This prints inputString to stderr for debugging:
    fputs("string: " + string + "\n", stderr)
    
    // Print the even-indexed characters
    // Write your code here
    var odd = ""
    var even = ""
    var position = 0
    
    for i in string {
        
        if position % 2 == 0 {
            even.append(i)
        } else {
            odd.append(i)
        }
        position += 1
    }
   
   print("\(even) \(odd)")

}
for _ in 1...numStrings {
    let inputString = readLine()!
    printEvenAndOdd(string: inputString)
}
