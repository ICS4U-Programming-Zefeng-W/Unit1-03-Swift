/*
  microwave.swift

  By Zefeng Wang
  Created on November 26, 2021

  Outputs the total time required to reheat a specific food (sub, pizza, or soup)
 given the times for each and the quantity (maximum 3). 
*/

// Ask user for mass of the object and read it  
print("What item do you want (sub, pizza, or soup)?")
var total = 0
let item = readLine()!
print("How many items (max 3)?")
let count = Int(readLine()!)!
// Calculates multiplier based on the quantity
let increaseFactor = (count != 1 ? (count == 2 ? 1.5 : 2) : 1)
// Calculates the time
switch item {
case "sub":
  total += Int(60 * increaseFactor)
case "pizza":
  total += Int(45 * increaseFactor)
default:
  total += Int(105 * increaseFactor)
}
// Converts the time into minutes and seconds, and displays it
let min = Int(total / 60)
let sec = total % 60

print("It takes \(min != 0 ? "\(min) minutes and \(sec) seconds" : "\(total) seconds") to reheat \(count) \(item)(s)")
