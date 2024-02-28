import UIKit

/*
 Given an array, , of  integers, print 's elements in reverse order as a single line of space-separated numbers.
 */


guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

guard let arrTemp = readLine()?.replacingOccurrences(of: "\\s+$", with: "", options: .regularExpression) else { fatalError("Bad input") }

let arr: [Int] = arrTemp.split(separator: " ").map {
    if let arrItem = Int($0) {
        return arrItem
    } else { fatalError("Bad input") }
}

guard arr.count == n else { fatalError("Bad input") }

var result : String = ""
for element in stride(from: arr.count - 1, through: 0, by: -1){
    var elementToString = String(arr[element])
    result += "\(elementToString) "
}

print(result)
