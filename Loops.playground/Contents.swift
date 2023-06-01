import UIKit


var myNumber = 1

myNumber = myNumber + 1
myNumber += 1
// döngü

var number = 0

// while Loop

while number <= 10 {
   // print(number)
    number += 1
}

var characterAlive = true
/*while characterAlive == true {
    print("Karakter Yaşıyor")
    characterAlive = false
    print("öldü")
    break
}*/

// for loop

var myFruitArray = ["Banana","Apple","Orange"]

for fruit in myFruitArray {
    print(fruit)
}

var myNumbers = [10,20,30,40,50,60]

for numbers in myNumbers {
    print(numbers / 2 )
}

for mynewInteger in 1 ... 5 {
    print(mynewInteger*5)
}
