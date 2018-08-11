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

if a > 4 {
    
}

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


