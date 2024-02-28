import UIKit


/*
 Given  names and phone numbers, assemble a phone book that maps friends' names to their respective phone numbers. You will then be given an unknown number of names to query your phone book for. For each  queried, print the associated entry from your phone book on a new line in the form name=phoneNumber; if an entry for  is not found, print Not found instead.

 Note: Your phone book should be a Dictionary/Map/HashMap data structure.
 */

// Enter your code here. Read input from STDIN. Print output to STDOUT

var phoneNumbers: [String: String] = [:]


let numEntries = Int(readLine()!)!


for _ in 1...numEntries {
    if let entry = readLine() {
        let person = entry.split(separator: " ").map(String.init)
        phoneNumbers[person[0]] = person[1]
    }
}
    
for _ in 1...numEntries {
    guard let name = readLine() else { break }
        
    if let phone = phoneNumbers[name] {
        print("\(name)=\(phone)")
    } else {
        print("Not found")
    }
}


