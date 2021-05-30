import UIKit
//Day 1

//Variables
var greeting = "Hello, playground"
greeting = "Goodbye"

//Strings and integers
var age = 26
var population = 8_000_000

//Multi-line strings
var str = """
    This goes
    over multiple
    lines
    """
var str2 = """
    This goes \
    over multiple \
    lines
    """

//Doubles and Booleans
var pi = 3.141
var awesome = true

//String interpolation
var score = 85
var string = "Your score was \(score)"
var test = "The test results are in: \(string)"

//Constants
let taylor = "swift"


//Type annotations
let string1 = "Hello, playground"
let album: String = "Reputation"
let year: Int = 1989
let height: Double = 1.78
let taylorRocks: Bool = true

//Day 2

//Arrays
let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"

let beatle = [john, paul, george, ringo]
beatle[1]

//Sets
let colors = Set(["red", "green", "blue"])
let colors2 = Set(["red", "green", "blue", "red", "blue"])

//Tuples
var name = (first: "Taylor", last: "Swift")
name.0
name.last

//Arrays vs Sets vs Tuples
let address = (house: "555", street: "Taylor Swift Ave", city: "Nashville")
let set = Set(["aardvark", "astronaut", "azalea"])
let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]

//Dictionaries
let heights = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73
]
heights["Taylor Swift"]

//Dictionary default values
let favoriteIceCream = [
    "Paul": "Chocolate",
    "Sophie": "Vanilla"
]
favoriteIceCream["Paul"]
favoriteIceCream["Charlotte"]
favoriteIceCream["Charlotte", default: "Unknown"]

//Creating empty collections
var teams = [String: String]()
teams["Paul"] = "Red"
teams

var int = [Int]()

var words = Set<String>()
var numbers = Set<Int>()

var scores = Dictionary<String, Int>()
var array = Array<Int>()

//Enumerations
let result = "failure"
let result2 = "failed"
let result3 = "fail"

enum Result {
    case success
    case failure
}
let result4 = Result.failure

//Enum associated values
enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(Volume: Int)
}
let talking = Activity.talking(topic: "football")

//Enum raw values
enum Planet: Int {
    case mercury = 1
    case venus
    case earth
    case mars
}
let earth = Planet(rawValue: 2)

//Day 3

//Arithmetic operators
let firstScore = 12
let secondScore = 4

let total = firstScore + secondScore
let difference = firstScore - secondScore

let product = firstScore * secondScore
let divided = firstScore / secondScore

let remainder = 13 % secondScore

//Operator overloading
let meaningOfLife = 42
let doubleMeaning = 42 + 42

let fakers = "Fakers gonna "
let action = fakers + "fake"

let firstHalf = ["John", "Paul"]
let secondHalf = ["George", "Ringo"]
let beatles = firstHalf + secondHalf

//Compound assignment operators
var scored = 95
scored -= 5

var qoute = "The rain in Spain falls mainly on the "
qoute += "Spainards"

//Comparison operators
let firstScoreed = 6
let secondScored = 4
firstScoreed == secondScored
firstScoreed != secondScored

firstScoreed < secondScored
firstScoreed >= secondScored

"Taylor" <= "Swift"

//Conditions
let firstCard = 11
let secondCard = 10

if firstCard + secondCard == 2 {
    print("Aces - lucky!")
} else if firstCard + secondCard == 21 {
    print("Blackjack!")
} else {
    print("Regular cards")
}

//Combining conditions
let age1 = 12
let age2 = 21

if age1 > 18 && age2 > 18 {
    print("Both ages are over 18")
}

if age1 > 18 || age2 > 18 {
    print("At least one is over 18")
}

//The ternary operator
print(firstCard == secondCard ? "Cards are the same" : "Cards are different")

if firstCard == secondCard {
    print("Cards are the same")
} else {
    print("Cards are different")
}

//Switch statements
let weather = "sunny"

switch weather {
case "rain":
    print("Bring an unbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
    fallthrough
default:
    print("Enjoy your day!")
}

//Range operators
let testScore = 85

switch testScore {
case 0..<50:
    print("You failed.")
case 50...85:
    print("You did OK.")
default:
    print("You did great!")
}

//Day 4

//For loops
let count = 1...10

for number in count {
    print("Number is \(number)")
}

let albums = ["Red", "1989", "Reputation"]

for album in albums {
    print("\(album) is on Apple Music")
}

print("Players gonna ")

for _ in 1...5 {
    print("play")
}

//While loops
var number = 1

while number <= 20 {
    print(number)
    number += 1
}

print("Ready or not, here I come!")

//Repeat loops
var integer = 1

repeat {
    print(integer)
    integer += 1
} while integer <= 20

print("Ready or not, here I come!")

while false {
    print("false")
}

repeat {
    print("false")
} while false

//Exiting loops
var countDown = 10

while countDown >= 0 {
    print(countDown)
    if countDown == 4 {
        print("I'm bored. Let's go now!")
        break
    }
    countDown -= 1
}

print("Blast off!")

//Exiting multiple loops
outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print("\(i) * \(j) is \(product)")

        if product == 50 {
            print("It's a bullseye!")
            break outerLoop
        }
    }
}

//Skipping items
for i in 1...10 {
    if i % 2 == 1 {
        continue
    }
    print(i)
}

//Infinite loops
var counter = 0

while true {
    print(" ")
    counter += 1

    if counter == 273 {
        break
    }
}

//Day 5

//Writing functions
func printHelp() {
    let message = """
Welcome to MyApp!

Run this app inside a directory of images and
MyApp will resize them all into thumbnails
"""
    print(message)
}
printHelp()

//Accepting parameter
func square(number: Int) {
    print(number * number)
}
square(number: 8)

//Returning values
func squared(number: Int) -> Int {
    return number * number
}
let result = squared(number: 8)

//Parameter labels
func sayHello(to name: String) {
    print("Hello, \(name)!")
}
sayHello(to: "Taylor")

//Omitting parameter labels
func greet(_ person: String) {
    print("Hello \(person)!")
}
greet("Taylor")

//Default parameters
func greeting(_ person: String, nicely: Bool = true) {
    if nicely == true {
        print("Hello, \(person)")
    } else {
        print("Oh, no, it's \(person) again...")
    }
}
greeting("Taylor")
greeting("taylor", nicely: false)

//Variadic functions
func variadic(numbers: Int...) {
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}
variadic(numbers: 1,2,3,4,5)

//Writing throwing functions
enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    return true
}

//Running throwing functions
do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}

//inout parameters
func doubleInPlace(number: inout Int) {
    number *= 2
}
var myNum = 10
doubleInPlace(number: &myNum)

//Day 6

//Creating basic closures
let drive = {
    print("I'm driving my car")
}
drive()

//Accepting parameters in a closure
let driving = { (place: String) in
    print("I'm driving to \(place) in my car")
}
driving("London")

//Returning values from a closure
let drivingWithReturn = { (place: String) -> String in
    return "I'm driving to \(place) in my car"
}
let message = drivingWithReturn("London")
print(message)

//Closures as parameters
func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}
travel(action: drive)

//Trailing closure syntax
travel {
    print("I'm driving in my car")
}

//Using closures as parameters when they accept parameters
func traveled(action: (String) -> Void) {
    print("I'M getting ready to go.")
    action("London")
    print("I arrived!")
}

traveled { (place: String) in
    print("I'm going to \(place) in my car")
}

//Using closures as parameters when they return values
func travels(action: (String) -> String) {
    print("I'm getting ready to go")
    let description = action("London")
    print(description)
    print("I arrived!")
}

travels { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

//Shorthand parameter names
travels {
    "I'm goin to \($0) in my car"
}

//Closures with multiple parameters
func trav(action: (String, Int) -> String) {
    print("I'm getting ready to go.")
    let desc = action("London", 60)
    print(desc)
    print("I arrived!")
}
trav {
    "I'm going to \($0) at \($1) miles per hour."
}

//Returning closures from functions
func travs() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}
let res = travs()
res("London")
let res2: Void = travs()("London")

//Capturing values
func trip() -> (String) -> Void {
    var counter = 1
    return {
        print("\(counter). I'm going to \($0)")
        counter += 1
    }
}
let result = trip()
result("London")
result("London")
result("London")
result("London")
