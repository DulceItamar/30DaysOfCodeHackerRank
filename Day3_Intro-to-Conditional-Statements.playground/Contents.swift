import UIKit

/*
 Given an integer, , perform the following conditional actions:

 If  is odd, print Weird
 If  is even and in the inclusive range of  to , print Not Weird
 If  is even and in the inclusive range of  to , print Weird
 If  is even and greater than , print Not Weird
 Complete the stub code provided in your editor to print whether or not  is weird.
 */


if let input = readLine() {
    if let n = Int(input) {
        if (n % 2 == 0) {
        
            if n >= 2 && n <= 5 {
                print("Not Weird")
            } else if n >= 6 && n <= 20 {
                print("Weird")
            } else if n > 20 {
                print("Not Weird")
            }
        
        } else {
            print("Weird")
        }
    }
}
