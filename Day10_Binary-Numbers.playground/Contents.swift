import UIKit





func binaryConverter( decimal num: Decimal) {

var exp: Int = 0
var baseTwo: Decimal  = 0

while num >= baseTwo {
    baseTwo = pow(2, exp)
    exp += 1
}

exp -= 2
var binary: String = ""
var remainingNum = num

while exp >= 0 {
    let currentPower = pow(2, exp)
    
    if remainingNum >= currentPower {
        remainingNum -= currentPower
        binary += "1"
    } else {
        binary += "0"
    }
    exp -= 1
}
    var groups = binary.split(separator: "0")
    var countingOnes: Int = 0
    
    for group in groups {
    
        if  group.count > countingOnes {
            countingOnes = group.count
        }
        
    }
        print(countingOnes)
    print(binary)


}


let example13 = binaryConverter(decimal: 13)
let example5 = binaryConverter(decimal: 5)
let example439 = binaryConverter(decimal: 439)
