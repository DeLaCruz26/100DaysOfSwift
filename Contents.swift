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

