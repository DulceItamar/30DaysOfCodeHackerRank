import UIKit

var greeting = "Hello, playground"
/*
 Given the meal price (base cost of a meal), tip percent (the percentage of the meal price being added as tip), and tax percent (the percentage of the meal price being added as tax) for a meal, find and print the meal's total cost. Round the result to the nearest integer.

 Example



 A tip of 15% * 100 = 15, and the taxes are 8% * 100 = 8. Print the value  and return from the function.

 Function Description
 Complete the solve function in the editor below.

 solve has the following parameters:

 int meal_cost: the cost of food before tip and tax
 int tip_percent: the tip percentage
 int tax_percent: the tax percentage
 Returns The function returns nothing. Print the calculated value, rounded to the nearest integer.

 Note: Be sure to use precise values for your calculations, or you may end up with an incorrectly rounded result.
 */



func solve(meal_cost: Double, tip_percent: Int, tax_percent: Int) -> Void {
    let tipAmount = meal_cost * (Double(tip_percent) / 100)
    let taxAmount = meal_cost * (Double(tax_percent) / 100)
    let totalCost = round(meal_cost + tipAmount + taxAmount)
   
   print(Int(totalCost))
   

}

let example = solve(meal_cost: 12.0, tip_percent: 20, tax_percent: 8)
//15
