import Foundation

/*
 Swift Basics
 Types - Int, Double, Float, Bool and String
 Collection Types - Array, Set, Dictionary
 constants and vars
 Tuples
 Optionals - “there is a value, and it equals x” or “there isn’t a value at all”
 Swift is a type-safe language, If part of your code requires a String, type safety prevents you from passing it an Int by mistake
 Swift is type safe, it performs type checks when compiling your code and flags any mismatched types as errors. This enables you to catch and fix errors as early as possible in the development process.
 The value of a constant can’t be changed once it’s set, whereas a variable can be set to a different value in the future.
 */

let maximumNumberOfLoginAttempts = 10
var currentLoginAttempt = 0
//maximumNumberOfLoginAttempts = 5 // This is a compile-time error: maximumNumberOfLoginAttempts cannot be changed.

//declare multiple constants or multiple variables on a single line, separated by commas:
var x = 0.0, y = 0.0, z = 0.0

// type annotation
var welcomeMessage: String
// with initial value
var welcomeMessage2 = "Welcome"

//You can define multiple related variables of the same type on a single line, separated by commas, with a single type annotation after the final variable name:
var red, green, blue: Double

/*
 More than one line
 comment
 */
print("I am")
/*********************************************************************************/
//                                  INTEGERS                                     //
/*********************************************************************************/
/*
 Swift provides signed and unsigned integers in 8, 16, 32, and 64 bit forms
 You can access the minimum and maximum values of each integer type with its min
 and max properties
 */
let terminator: String = ":"
print("8 bit unsigned min", terminator: terminator)
print(UInt8.min)
print("8 bit unsigned max", terminator: terminator)
print(UInt8.max)
print("8 bit signed min", terminator: terminator)
print(Int8.min)
print("8 bit signed max", terminator: terminator)
print(Int8.max)
print("-------------------------------------")
print("16 bit unsigned min", terminator: terminator)
print(UInt16.min)
print("16 bit unsigned max", terminator: terminator)
print(UInt16.max)
print("16 bit signed min", terminator: terminator)
print(Int16.min)
print("16 bit signed max", terminator: terminator)
print(Int16.max)
print("-------------------------------------")
print("32 bit unsigned min", terminator: terminator)
print(UInt32.min)
print("32 bit unsigned max", terminator: terminator)
print(UInt32.max)
print("32 bit signed min", terminator: terminator)
print(Int32.min)
print("32 bit signed max", terminator: terminator)
print(Int32.max)
print("-------------------------------------")
print("64 bit unsigned min", terminator: terminator)
print(UInt64.min)
print("64 bit unsigned max", terminator: terminator)
print(UInt64.max)
print("64 bit signed min", terminator: terminator)
print(Int64.min)
print("64 bit signed max", terminator: terminator)
print(Int64.max)
print("-------------------------------------")
/*
 On a 32-bit platform, Int is the same size as Int32.
 On a 64-bit platform, Int is the same size as Int64.
 */
print(Int.max)
/*
 On a 32-bit platform, UInt is the same size as UInt32.
 On a 64-bit platform, UInt is the same size as UInt64.
 */
print(UInt.max)

/*********************************************************************************/
//                         FLOATING POINT NUMBERS                                 /
/*********************************************************************************/
/*
 Floating-point numbers are numbers with a fractional component, such as 3.14159, 0.1, and -273.15.
 - Double represents a 64-bit floating-point number.
 - Float represents a 32-bit floating-point number.
 */

// Type Safety and Type Inference ? literal value
// Swift always chooses ... (rather than ...) when inferring the type of floating-point numbers.

//Integer and floating point conversion
let three = 3
let pointOneFourOneFiveNine = 0.14159
let pi = Double(three) + pointOneFourOneFiveNine

let integerPi = Int(pi)

let doubleX = 4.75
// let intX = Int(doubleX) Result

/*********************************************************************************/
//                         BOOLEANS                                               /
/*********************************************************************************/
let orangesAreOrange = true // Type ....?
let turnipsAreDelicious = false

/*********************************************************************************/
//                         TUPLES                                                 /
/*********************************************************************************/
/*
 Tuples group multiple values into a single compound value.
 The values within a tuple can be of any type and
 don’t have to be of the same type as each other.
 */
let http404Error = (404, "Not Found")
let (statusCode, statusMessage) = http404Error
print("The status code is \(statusCode)")
print("The status message is \(statusMessage)")

let (justTheStatusCode, _) = http404Error
print("The status code is \(justTheStatusCode)")

print("The status code is \(http404Error.0)")
print("The status message is \(http404Error.1)")

let http200Status = (statusCode: 200, description: "OK")
print("The status code is \(http200Status.statusCode)")
print("The status message is \(http200Status.description)")

/*********************************************************************************/
//                         OPTIONALS                                              /
/*********************************************************************************/
/*
 You use optionals in situations where a value may be absent.
 An optional represents two possibilities:
    - Either there is a value, and you can unwrap the optional to access that value,
    - or there isn’t a value at all.
 */
let possibleNumber = "123a"
//let convertedNumber = Int(possibleNumber)
var iAmAnInt: Int
//print(iAmAnInt)
var iAmAnOptionalInt: Int?
//print(iAmAnOptionalInt)

//Optional Binding
if let actualNumber = Int(possibleNumber) {
    print("\"\(possibleNumber)\" has an integer value of \(actualNumber)")
} else {
    print("\"\(possibleNumber)\" could not be converted to an integer")
}

//Implicitly Unwrapped Optionals
/*
 Sometimes it’s clear from a program’s structure that an optional will always have a value, after that value is first set.
 In these cases, it’s useful to remove the need to check and unwrap the optional’s value every time it’s accessed,
 because it can be safely assumed to have a value all of the time.
 
 These kinds of optionals are defined as implicitly unwrapped optionals.
 You write an implicitly unwrapped optional by placing an exclamation mark (String!)
 rather than a question mark (String?) after the type that you want to make optional.
 
 Implicitly unwrapped optionals are useful when an optional’s value is confirmed
 to exist immediately after the optional is first defined and can definitely be
 assumed to exist at every point thereafter. The primary use of implicitly
 unwrapped optionals in Swift is during class initialization.
 
 You can think of an implicitly unwrapped optional as giving permission
 for the optional to be unwrapped automatically whenever it’s used.
 */

let possibleString: String? = "An optional string."
let forcedString: String = possibleString! // requires an exclamation mark

let assumedString: String! = "An implicitly unwrapped optional string."
let implicitString: String = assumedString // no need for an exclamation mark

//!!! Don’t use an implicitly unwrapped optional when there’s a possibility of a variable becoming nil at a later point.

/*********************************************************************************/
//                         BASIC OPERATORS                                        /
/*********************************************************************************/
// An operator is a special symbol or phrase that you use to check, change, or combine values.
//let maxMax = Int.max + Int.max

/*
 - Unary operators operate on a single target (such as -a). Unary prefix operators appear immediately before their target (such as !b),
 and unary postfix operators appear immediately after their target (such as c!).
 - Binary operators operate on two targets (such as 2 + 3) and are infix because they appear in between their two targets.
 - Ternary operators operate on three targets. Like C, Swift has only one ternary operator, the ternary conditional operator (a ? b : c).
 */
//Assignment operators
let b = 10
var a = 5

//Arithmetic Operators
/*
 Addition (+)
 Subtraction (-)
 Multiplication (*)
 Division (/)
 */
1 + 2
5 - 3
2 * 3
10.0 / 2.5
//Remainder Operator
9 % 4
//Unary Minus Operator
let minusThree = -three
let plusThree = -minusThree
//Compound Assignment Operators
var k = 1
k += 2
//Comparison Operators
/*
 Equal to (a == b)
 Not equal to (a != b)
 Greater than (a > b)
 Less than (a < b)
 Greater than or equal to (a >= b)
 Less than or equal to (a <= b)
 */
1 == 1
2 != 1
2 > 1
1 < 2
1 >= 1
2 <= 1
//You can compare two tuples if they have the same type and the same number of values.
(1, "zebra") < (2, "apple")
(3, "apple") < (3, "bird")
(4, "dog") == (4, "dog")
//("blue", false) < ("purple", true)

//Ternary Conditional Operator
let contentHeight = 40
let hasHeader = true
let rowHeight = contentHeight + (hasHeader ? 50 : 20)

//Nil-Coalescing Operator
//The nil-coalescing operator (a ?? b) unwraps an optional a if it contains a value, or returns a default value b if a is nil.
let defaultColorName = "red"
var userDefinedColorName: String?   // defaults to nil

var colorNameToUse = userDefinedColorName ?? defaultColorName //as ternary

userDefinedColorName = "green"
colorNameToUse = userDefinedColorName ?? defaultColorName

//Range Operators
//Closed Range Operator
/*
 The closed range operator (a...b) defines a range that runs from a to b, and includes the values a and b.
 The value of a must not be greater than b.
 */
for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")
}
//Half-Open Range Operator
let names = ["Anna", "Alex", "Brian", "Jack"]
let count = names.count
for i in 0..<count {
    print("Person \(i + 1) is called \(names[i])")
}
//One-Sided Ranges
for name in names[2...] {
    print(name)
}

for name in names[...2] {
    print(name)
}

for name in names[..<2] {
    print(name)
}
let range = ...5
range.contains(7)
range.contains(4)
//range.contains(-1)

//Logical Operators
/*
Logical operators modify or combine the Boolean logic values true and false.
Swift supports the three standard logical operators found in C-based languages:

- Logical NOT (!a)
- Logical AND (a && b)
- Logical OR (a || b)
 */
let allowedEntry = false
if !allowedEntry {
    print("ACCESS DENIED")
}

let enteredDoorCode = true
let passedRetinaScan = false
if enteredDoorCode && passedRetinaScan {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}

let hasDoorKey = false
let knowsOverridePassword = true
if hasDoorKey || knowsOverridePassword {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}
if enteredDoorCode && passedRetinaScan || hasDoorKey || knowsOverridePassword {
//    print("Welcome!")
} else {
//    print("ACCESS DENIED")
}
if (enteredDoorCode && passedRetinaScan) || hasDoorKey || knowsOverridePassword {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}

/*********************************************************************************/
//                         Strings and Characters                                 /
/*********************************************************************************/

let someString = "Some string literal value"

let quotation = """
The White Rabbit put on his spectacles.  "Where shall I begin,
please your Majesty?" he asked.

"Begin at the beginning," the King said gravely, "and go on
till you come to the end; then stop."
"""

let softWrappedQuotation = """
The White Rabbit put on his spectacles.  "Where shall I begin, \
please your Majesty?" he asked.

"Begin at the beginning," the King said gravely, "and go on \
till you come to the end; then stop."
"""

print(softWrappedQuotation)

//Special Characters in String Literals
/*
    - The escaped special characters \0 (null character), \\ (backslash), \t (horizontal tab), \n (line feed), \r (carriage return), \"
    (double quotation mark) and \' (single quotation mark)
    - An arbitrary Unicode scalar, written as \u{n}, where n is a 1–8 digit hexadecimal number with a value equal to a
    valid Unicode code point (Unicode is discussed in Unicode below)
 */
let wiseWords = "\"Imagination is more important than knowledge\" - Einstein"

let dollarSign = "\u{24}"
let blackHeart = "\u{2665}"
let sparklingHeart = "\u{1F496}"

//Initializing an Empty String
var emptyString = ""
var anotherEmptyString = String()
/*
 !!!Swift’s String type is a value type. If you create a new String value, that String value is copied
    when it’s passed to a function or method, or when it’s assigned to a constant or variable. In each case,
    a new copy of the existing String value is created, and the new copy is passed or assigned,
    not the original version.
 */

//Characters
for character in "Dog!🐶" {
    print(character)
}

let exclamationMark: Character = "!"
let catCharacters: [Character] = ["C", "a", "t", "!", "🐱"]

let string1 = "hello"
let string2 = " there"
var welcome = string1 + string2

var instruction = "look over"
instruction += string2

//String Interpolation
let multiplier = 3
let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"

let unusualMenagerie = "Koala 🐨, Snail 🐌, Penguin 🐧, Dromedary 🐪"
print("unusualMenagerie has \(unusualMenagerie.count) characters")

let greeting = "Guten Tag!"
greeting[greeting.startIndex]
greeting[greeting.index(before: greeting.endIndex)]
greeting[greeting.index(after: greeting.startIndex)]
let index = greeting.index(greeting.startIndex, offsetBy: 7)
greeting[index]

for index in greeting.indices {
    print("\(greeting[index]) ", terminator: "")
}

var welcomeX = "hello"
welcomeX.insert("!", at: welcomeX.endIndex)

welcomeX.insert(contentsOf: " there", at: welcomeX.index(before: welcomeX.endIndex))

//Udemy QA is great team! -- Code Challenge
var startString = "QA great"

startString.append(exclamationMark)
print(startString)

//Collection Types
// Swift has three collection types -- Array, Set, Dictionary
// Array        -- Ordered collection of values
// Set          -- Unordered collection of unique values
// Dictionary   -- Unordered collection of key-value assocications

// ARRAY
// Stores values of the same type in an ordered list
var someInts = [Int]()
print("someInts is type of [Int] with \(someInts.count) items")

var threeDoubles = Array(repeating: 0.0, count: 3)
var anotherThreeDoubles = Array(repeating: 2.5, count: 3)

var sixDoubles = threeDoubles + anotherThreeDoubles

var shoppingList = ["Eggs", "Milk"]
print("The shopping list contains \(shoppingList.count) items.")

if shoppingList.isEmpty {
    print("The shopping list is empty.")
} else {
    print("The shopping list is not empty.")
}

shoppingList.append("Flour")

shoppingList += ["Baking Powder"]
shoppingList += ["Chocolate Spread", "Cheese", "Butter"]

var firstItem = shoppingList[0]
shoppingList[0] = "Six eggs"

shoppingList[0...4] = ["Bananas", "Apples"]
print(shoppingList)
shoppingList.insert("Maple Syrup", at: 0)
let mapleSyrup = shoppingList.remove(at: 0)

firstItem = shoppingList[0]

let apples = shoppingList.removeLast()
for item in shoppingList {
    print(item)
}

for (index, value) in shoppingList.enumerated() {
    print("Item \(index + 1): \(value)")
}

//SETS
// Stores distinct values of the same type in a collection with no defined ordering
var letters = Set<Character>()
print("letters is of type Set<Character> with \(letters.count) items.")

letters.insert("a")

var favoriteGenres: Set<String> = ["Rock", "Classical", "Hip hop"]
print("I have \(favoriteGenres.count) favorite music genres.")

var result = favoriteGenres.insert("Rock")
print(result)

if favoriteGenres.isEmpty {
    print("As far as music goes, I'm not picky.")
} else {
    print("I have particular music preferences.")
}

favoriteGenres.insert("Jazz")

if let removedGenre = favoriteGenres.remove("Rock") {
    print("\(removedGenre)? I'm over it.")
} else {
    print("I never much cared for that.")
}

if favoriteGenres.contains("Funk") {
    print("I get up on the good foot.")
} else {
    print("It's too funky in here.")
}

for genre in favoriteGenres {
    print("\(genre)")
}

for genre in favoriteGenres.sorted() {
    print("\(genre)")
}

for genre in favoriteGenres.sorted().reversed() {
    print("\(genre)")
}

let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]

//A ∪ B
oddDigits.union(evenDigits).sorted()
//(A - B) ∪ (B - A)
oddDigits.symmetricDifference(singleDigitPrimeNumbers)
//A ∩ B
oddDigits.intersection(singleDigitPrimeNumbers)
//A - B
oddDigits.subtracting(singleDigitPrimeNumbers)

//Code Challenge
// 0 < x < 15, x % 4 = 0
// 0 < y < 15, x % 3 = 0
// a ∈ (x - y), b ∈ (y - x), c ∈ (x ∩ y) => ∑a * ∑b / ∑c ?

let houseAnimals: Set = ["🐶", "🐱"]
let myHouseAnimals: Set = ["🐶", "🐱"]
let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
let cityAnimals: Set = ["🐦", "🐭"]

houseAnimals.isSubset(of: farmAnimals)
houseAnimals.isStrictSubset(of: farmAnimals)
myHouseAnimals.isStrictSubset(of: houseAnimals)
farmAnimals.isSuperset(of: houseAnimals)
farmAnimals.isStrictSuperset(of: houseAnimals)
farmAnimals.isDisjoint(with: cityAnimals)

//DICTIONARIES
//stores associations between keys of the same type and values of the same type in a collection with no defined ordering.
//Each value is associated with a unique key, which acts as an identifier for that value within the dictionary. Unlike
//items in an array, items in a dictionary do not have a specified order.

var namesOfIntegers = [Int: String]()
namesOfIntegers[16] = "sixteen"
namesOfIntegers = [:]

var airports: [String: String] = ["ESB": "Esenboga", "DUB": "Dublin"]
airports = ["ESB": "Esenboga", "DUB": "Dublin"]

print("The airports dictionary contains \(airports.count) items.")

if airports.isEmpty {
    print("The airports dictionary is empty.")
} else {
    print("The airports dictionary is not empty.")
}

airports["LHR"] = "London"
airports["LHR"] = "London Heathrow"

if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB") {
    print("The old value for DUB was \(oldValue).")
}

if let airportName = airports["DUB"] {
    print("The name of the airport is \(airportName).")
} else {
    print("That airport is not in the airports dictionary.")
}

airports["APL"] = "Apple International"
airports["APL"] = nil //?

if let removedValue = airports.removeValue(forKey: "DUB") {
    print("The removed airport's name is \(removedValue).")
} else {
    print("The airports dictionary does not contain a value for DUB.")
}

for (airportCode, airportName) in airports {
    print("\(airportCode): \(airportName)")
}

for airportCode in airports.keys {
    print("Airport code: \(airportCode)")
}

for airportName in airports.values {
    print("Airport name: \(airportName)")
}

let airportCodes = [String](airports.keys)
let airportNames = [String](airports.values)
//print KeyBoard shortcut and swift cheet sheet

// Variable decleration
    // Data Types -- Int, String, Float, Double
    // string concatenation
    // String format
    // Arrays
// Value assignment
    // var vs let
    // shorthand operators
    // symmetrical space operator space
//Functions
    // hit enter after {
    // first define then use
    // internal and external parameters
    // _ using in functions
    // function naming for swift
//Conditions
    //if else if else
//For loop
    //..., ..<
    //reverse
    //fibonacci with loop


