import UIKit

//variable

// Create variables of different types and print it

var intType:Int = 5
let variableInt: Int = 5
print(intType)
print(variableInt)

var characterType:Character = "D"
print(characterType)

var doubleType:Double = 5
print(doubleType)

var floatType:Float = 6
print(floatType)

let boolType:Bool = true
print(boolType)

var stringType:String = "Darshan"
print(stringType)

// Create one integer and perform addition with 5 to that and print values

var updateVariable:Int = 1
updateVariable += 5
print(updateVariable)

// There is one constant with value of interest rate (15%) create one playground for calculate interest for given amount and duration

let interest = 15 //% yearly
var amount = 10000
var duration = 2 //months

var amountofinterest = (amount * interest) / 100
var durationviseprice = (amountofinterest * duration) / 12

print("2 month interest is:\(durationviseprice)")

//operstor

// Create example for String concate using operators

var firstNameString = "Darshan"
var lastNameString = " Dangar"
firstNameString += lastNameString
print(firstNameString)

// Create one example for show usage of operator's addition, multiplication, division for integers and floats

var integerNumberOne:Int = 5
var integerNumberTwo:Int = 6

var additionforInt:Int = integerNumberOne + integerNumberTwo
print(additionforInt)

var substractionforInt = integerNumberTwo - integerNumberOne
print(substractionforInt)

var multiplicationforInt = integerNumberOne * integerNumberTwo
print(multiplicationforInt)

var divisionforInt = integerNumberTwo / integerNumberOne
print(divisionforInt)

var floatNumberOne:Float = 5
var floatNumberTwo:Float = 6

var additionforFloat:Float = floatNumberOne + floatNumberTwo
print(additionforInt)

var substractionforFloat = floatNumberTwo - floatNumberOne
print(substractionforInt)

var multiplicationforFloat = floatNumberOne * floatNumberTwo
print(multiplicationforFloat)

var divideforFloat = floatNumberTwo / floatNumberOne
print(divideforFloat)

var integerToFloat = Float(integerNumberOne) + floatNumberOne
print(integerToFloat)

var floatToInteger = integerNumberOne + Int(floatNumberOne)
print(floatToInteger)

// What is turnery operator and show example of usage?

var marks = 88
var result = (marks > 33) ? "Pass" : "Fail"
print("Congratulations you are "+result+" in the exam" )

//working with text

//1. Write a Swift program to create a new string made of a copy of the first two characters of a given string. If the given string is shorter than length 2, return whatever there is.
    //Input: “Simform”
    //Output: “Si”

var string = "Simform"

if string.count < 2{
    print(string)
}else{
    print(string.prefix(2))
}

//2. Write a Swift program to create a new string without the first and last character of a given string. The string length must be at least 2.
    //Input: “Simform”
    //Output: imfor

if string.count < 2{
    print(string)
}else{
    let range = string.index(string.startIndex, offsetBy: 1)..<string.index(before: string.endIndex)
    var updateString = string.substring(with:range)
    print(updateString)
}

//3. Write a Swift program that accept two strings and return their concatenation, except the first char of each string. The given strings length must be at least 1.
    //Input: "Swift", "Examples"
    //Output: wiftxamples

var acceptStringOne = "Hello"
var acceptStringTwo = "Darshan"
var updateAcceptString = String()

if (acceptStringOne.isEmpty || acceptStringTwo.isEmpty) {
    print("Both String Empty")
}else{
    acceptStringOne.dropFirst()
    acceptStringTwo.dropFirst()
    updateAcceptString = acceptStringOne + acceptStringTwo
    print(updateAcceptString)
}

//var string2 = "Swift"
//var string3 = string2.dropFirst()
//string3 += "Examples".dropFirst()
//print(string3)

//extra

acceptStringOne.remove(at: acceptStringOne.startIndex)
acceptStringTwo = "Examples"
acceptStringOne += acceptStringTwo.dropFirst()
print(acceptStringOne)


//4. Write a Swift program to test if a given string starts with "Sw".
    //Input: Swift
    //Output: true

var checkPrefix = "Swift"
if checkPrefix.contains("Sw"){
    print("true")
}

//4.

print(checkPrefix.hasPrefix("Sw"))

//4

if checkPrefix.starts(with: "Sw"){
    print("String start with Sw")
    print("true")
}

//5. Write a Swift program to create a new string made of the first and last n chars from a given string. The string length will be at least n.
    //Input: “Simform Solutions”, 3
    //Output: Simons

var fullNameString = "Simform Solutions"
var nPrefixSuffix = fullNameString.prefix(3) + fullNameString.suffix(3)
print(nPrefixSuffix)

//6. Try all string methods:https://developer.apple.com/documentation/swift/string

let greeting = "Welcome"
var name = "Darshan"
print(greeting + " " + name)

var digitOne = 2
var digitTwo = 3
var priceofCookie = "\(digitTwo) cookies: $\(digitOne * digitTwo)"
print(priceofCookie)

var strConcetination = greeting + " We're glad you're here"
print(strConcetination)

let nameString = "Darshan Dangar"
let firstSpace = nameString.firstIndex(of: " ") ?? nameString.endIndex
let firstname = nameString[..<firstSpace]
print("substring is:\(firstname) and its length is \(firstname.count)")

let cafe = "Cafe\u{301} du 🌍"
print(cafe)

print(cafe.count)
print(Array(cafe))

print(cafe.unicodeScalars.count)
print(Array(cafe.unicodeScalars))
print(cafe.unicodeScalars.map({$0.value})) //ascii value

print(cafe.utf16.count)
print(Array(cafe.utf16))

var stringOperation = "Darshan"
print(stringOperation[stringOperation.startIndex])
print(stringOperation[stringOperation.index(after: stringOperation.startIndex)])

for _ in 1...5{
    print("*")
}

stringOperation = String()
print(stringOperation)

stringOperation.write("Dangar")
print(stringOperation)

stringOperation.append(" Dangar")
stringOperation.append(contentsOf: " Hello")
stringOperation.reserveCapacity(5)

stringOperation.insert("D", at: stringOperation.endIndex)
stringOperation.insert(contentsOf: "Hello ", at: stringOperation.endIndex)

let range1 = stringOperation.index(stringOperation.startIndex, offsetBy: 2)..<stringOperation.index(before: stringOperation.endIndex)
stringOperation.replaceSubrange(range1, with: "Dangar")

print(stringOperation.remove(at: stringOperation.index(stringOperation.startIndex, offsetBy: 5)))
stringOperation.uppercased()
print(stringOperation)
stringOperation.lowercased()
print(stringOperation)
stringOperation.localizedLowercase
print(stringOperation)
stringOperation.localizedCapitalized
print(stringOperation)



//controlflow

//1. Print the powers of 2 that are less than or equal to N.

var numberBy = 100
var power = 2
var ans = 1
for _ in 1..<numberBy{
    ans = ans * 2
    if ans <= numberBy{
        print(ans)
    }else{
        break
    }
}

// Ans

// 2
// 4
// 8
// 16
// 32
// 64

//2. Given an integer N draw a square of N x N asterisks. Look at the examples

var nDraw = 3
for _ in 1...nDraw{
    for _ in 1...nDraw{
        print("#" , terminator: "")
    }
    print("")
}

// Ans

//###
//###
//###

//3. Given an integer N draw a triangle of asterisks. The triangle should have N lines, the i-th line should have i asterisks on it.

var nDrawTriangle = 4
for i in 1...nDrawTriangle{
    for _ in 1...i{
        print("#" , terminator:"")
    }
    print("")
}

// Ans

//#
//##
//###
//####

//4. Given an integer N draw a pyramid of asterisks. The pyramid should have N lines. On the i-th line there should be N-i spaces followed by i*2-1 asterisks.

var nDwawSpaceTriangle = 4
for i in 1...nDwawSpaceTriangle{
    for _ in 0...(nDwawSpaceTriangle-i){
        print(" ",terminator: " ")
    }
    for _ in 1...(i*2)-1{
        print("#",terminator: "")
    }
    print("")
}

// Ans

//      #
//    ###
//  #####
//#######

//5. You are given a number. Print "prime" if the number is a prime and "not prime" otherwise. A number is a prime if it has exactly 2 distinct divisors (1 and itself).

var checkPrime = 17

if checkPrime == 0 || checkPrime == 1{
    print("\(checkPrime) is not prime number")
}
for _ in 2..<checkPrime{
    if checkPrime % 2 == 0{
        print("\(checkPrime) is not prime number")
        break
    }else if checkPrime % 3 == 0{
        print("\(checkPrime) is not prime number")
        break
    }else if checkPrime % 4 == 0{
        print("\(checkPrime) is not prime number")
        break
    }else if checkPrime % 5 == 0{
        print("\(checkPrime) is not prime number")
        break
    }else if checkPrime % 6 == 0{
        print("\(checkPrime) is not prime number")
        break
    }else if checkPrime % 7 == 0{
        print("\(checkPrime) is not prime number")
        break
    }else if checkPrime % 8 == 0{
        print("\(checkPrime) is not prime number")
        break
    }else if checkPrime % 9 == 0{
        print("\(checkPrime) is not prime number")
        break
    }else{
        print("\(checkPrime) is prime number")
        break
    }
}

// Ans

// 17 is prime number
        




