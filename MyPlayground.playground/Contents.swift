import UIKit
// Write simple code and understand it here
var greeting = "Hello, playground"

// Variables and their types
var name : String = "Temuulen"
let age : Int = 24 // we cannot change let variable bc they are constant

// \() allows us to add variable and expression in print(kinda like c#)
print("My name is \(name) and i am \(age) years old")

// Long senteces
let me = """
        Next year, i will be \(age+1), and i am little bit worried.
        Because i feel like i am getting little bit old. 
        I think everyone feels this way!!!
        """
// Long sentences
print(me)

// Array and dictionary:
var array = ["Tem", "Barry", "Gane", "Eric"]
var dic = ["Tem" : 24, "Gana" :24, "barry" : 23, "Eric" :25]

for element in array{
    if element == "Tem"{
        print(element)
    }
}
var num = 0
for i in 1..<10{
    print(i)
}
print(num)

for (a, d) in dic{
    print(a, d)
}

// optional variable
var optionalString: String? = "Hello"
print(optionalString == nil)
// Prints "false"
var nickname : String? = "Tem"
var nonickname : String? = nil

if let name = nonickname{
    print("Yes, he has nickname which is \(name)")
}
else{
    print("No, he doesn't have nickname!")
}

var optionalName: String? = nil
var greeting2 = "Hello!, two"
if let name = optionalName { // when optional name is nil, it return false
    greeting2 = "Hello, \(name)"
}

// Switch condition and it must have default value
let vegetable = "celery"
switch vegetable {
case "celery": // it looks like vege must exact celery
    print("Add some raisins and make ants on a log.")
case "cucumber", "watercress": // if one of them is yes, i will print
    print("That would make a good tea sandwich.")
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)?")
default:
    print("Everything tastes good in soup.")
}


// Functions: func name(parameters) -> return type (required)
// they can also get another function as parameter or return values!!!
func calculate(age : Int) -> String{
    return "You born in \(2025 - age)."
}

print(calculate(age: 24))

// Can have nested functions
func simpleTime(time : [Int]) -> (){
    // Can add function here
    func dfs(tree : [Int]) -> Int{
        return tree[0] - 1
    }
    return
}

simpleTime(time: [21])


// Closures: they are unnamed functions
let numbers = [1,2,4]
let double = numbers.map {(number) in number*2}
let double2 = numbers.filter { number in
     number % 2 == 0
}
print(double)
print(double2)

// Classes and objects
// Creating class -> class then class name. this is itttt.!!!!
class NewObject {
    var w  : Int
    var h  : Int
    
    init(w: Int, h: Int) { //  this is required to create class
        self.w = w
        self.h = h
    }
    
    var para = 0
    func findpara() -> Int{
        return w * h
    }
}

// how to use the class?
var newobject = NewObject(w: 20, h: 30) // also write what parameter nane
print(newobject.h)

var parementer = newobject.findpara()
print(parementer)


// Enumeration

enum Suit {
    case spades, hearts, diamonds, clubs


    func simpleDescription() -> String {
        switch self {
        case .spades:
            return "spades"
        case .hearts:
            return "hearts"
        case .diamonds:
            return "diamonds"
        case .clubs:
            return "clubs"
        }
    }
}
let hearts = Suit.hearts
let heartsDescription = hearts.simpleDescription()

if hearts != Suit.clubs{
    print("yes")
    print("item is \(heartsDescription)")
}
