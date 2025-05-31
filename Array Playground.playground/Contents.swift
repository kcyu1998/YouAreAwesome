import UIKit

//var messages = ["You Are Awesome!", "You Are Amazing!", "Fabulous? That's You!"]
//print(messages)
//print(messages.count)
//messages.insert( "You Are Amazing!", at: 0)
//print(messages)
//let removedValue = messages.remove(at: 2)
//print(removedValue)
//print(messages)

//Empty Arrays
//var grades: [Double] = []
//grades.append(82)
//grades += [91, 88]
//print("")
//print(grades)

var tubbies = ["Tinky Winky", "Dipsy", "Laa-Laa", "Po"]
//for tubby in tubbies {
  //  print(tubby)
//}

// Close Range
//for tubby in 0...tubbies.count-1 {
  //  print(tubbies[tubby])
//}
var quizzes = [72,81,89,95,92]
var average = 0.0
var total = 0

print("\nIterate Through an Array")
for quiz in quizzes {
    total += quiz
}
average = Double(total)/Double(quizzes.count)
print("Average: \(average)")

print("\nHalf Open Range")
total = 0
average = 0.0
for quiz in 0..<quizzes.count {
    total = total + quizzes[quiz]
    
}
average = Double(total)/Double(quizzes.count)
print("Half Open Range Average: \(average)")


print("\nClose Open Range")
total = 0
average = 0.0

for quiz in 0...quizzes.count-1 {
    total = total + quizzes[quiz]
    
    }
average = Double(total)/Double(quizzes.count)
print("Cose Range Average: \(average)")

print("\nCountdown")
for countdown in (0...10).reversed() {
    print(countdown)
}

print("\nStride")
//Count the Olympic year 2024 through 2050

for i in stride(from: 2024, to: 2050, by: 4) {
 print(i)
}
