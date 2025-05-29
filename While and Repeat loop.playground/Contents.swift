import UIKit

// We have a four sided dice
// We don't want to repeat our last roll
// We need to:
// -keep track of the last roll
// -roll again
// -compare the last roll to the current roll
// -if the last roll == the current roll, then we need to roll again
// -keep rolling again until the current roll != the last roll




var diceRoll: Int //explicit declaration, but not initialized
var rollCount = 0

repeat {
    
    diceRoll = Int.random(in: 1...6)
    rollCount += 1
    print("Dice Roll #\(rollCount) = \(diceRoll)")}
while diceRoll != 6

    
print("It took \(rollCount) rolls to roll a six")
