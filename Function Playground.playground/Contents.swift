import UIKit

//Roll Dice -no parameters, no return values

//func rollDice(){
//    print("You rolled a \(Int.random(in: 1...8))")
//}
//    
//rollDice()
//rollDice()
//rollDice()

// Roll an X-sided dice.  A function with 1 parameter
//print("")
//func rollXsidedDice(x: Int){
//    
//    print("You rolled a \(Int.random(in: 1...x)) on a \(x)-sided dice.")
//}
//
//rollXsidedDice(x:12)
//rollXsidedDice(x:20)
//rollXsidedDice(x:100)
//
//func rollMultipleDice(numberOfDice:Int, diceSides: Int){
//    guard numberOfDice > 0 else{
//        print("Cannot calculate roll of \(numberOfDice) dice. Please enter a positive number.")
//        return
//    }
//    
//    var total = 0
//    var rollString = ""
//    
//    print("You rolled \(numberOfDice) dices, \(diceSides)-sided dice")
//    total = Int.random(in: 1...diceSides)
//    rollString = "\(total)"
//    if numberOfDice > 1 {
//        for _ in 2...numberOfDice {
//            let diceRoll = Int.random(in: 1...diceSides)
//            total += diceRoll
//            rollString = rollString + ", \(diceRoll)"
//        }
//    }
//    print(rollString)
//    print("Total Roll: \(total)")
//}
//
//rollMultipleDice(numberOfDice: 0, diceSides: 4)

//Function with a return statement

func average(grades: [Int]) -> Double {
    var total = 0
    for grade in grades {
        total += grade
    }
    return Double(total)/Double(grades.count)
    
}

var michaelGrades = [40,65,70,68]
var pamGrades = [90,95,85,92]
var creedGrades = [80,75,90,85]

print("Michael earned a:\(average(grades: michaelGrades))")

func letterGrade(score: Double) -> String {
    switch score {
    case 90...100:
        return "A"
    case 80..<90:
        return "B"
    case 70..<80:
        return "C"
    case 60..<70:
        return "D"
    default:
        return "F"
    }
}

print("")
print("Michael earned a: \(letterGrade(score: average(grades: michaelGrades)))")
let pamScore = average(grades: pamGrades)
print("Pam earned a:\(letterGrade(score: pamScore))")
print("Creed earned a:\(letterGrade(score: average(grades: creedGrades)))")

