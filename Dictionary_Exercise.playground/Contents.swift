import UIKit

//dictionary

//1. You are given a dictionary code of type [String:String] which has values for all lowercase letters. The codedictionary represents a way to encode a message. For example if code["a"] = "z" and code["b"] = "x" the encoded version if "ababa" will be "zxzxz". You are also given a encodedMessage which contains only lowercase letters and spaces. Use the codedictionary to decode the message and print it. Write a Swift program to decode the message and print final output string

var code = [

"a" : "b",

"b" : "c",

"c" : "d",

"d" : "e",

"e" : "f",

"f" : "g",

"g" : "h",

"h" : "i",

"i" : "j",

"j" : "k",

"k" : "l",

"l" : "m",

"m" : "n",

"n" : "o",

"o" : "p",

"p" : "q",

"q" : "r",

"r" : "s",

"s" : "t",

"t" : "u",

"u" : "v",

"v" : "w",

"w" : "x",

"x" : "y",

"y" : "z",

"z" : "a"
]

var encodedMessage = "uijt nfttbhf jt ibse up sfbe"
for i in encodedMessage{
    print("\(code[String(i)])")
}
    for (key,value) in code{
        print("\(key): \(value)")
    }

//2. You are given an array of dictionaries. Each dictionary in the array contains exactly 2 keys “firstName” and “lastName”. Create an array of strings called firstNames that contains only the values for “firstName” from each dictionary.

var people: [[String:String]] = [

[

"firstName": "Calvin",

"lastName": "Newton"

],

[

"firstName": "Garry",

"lastName": "Mckenzie"

],

[

"firstName": "Leah",

"lastName": "Rivera"

],

[

"firstName": "Sonja",

"lastName": "Moreno"

],

[

"firstName": "Noel",

"lastName": "Bowen"

]

]
var firstNameArray:[String] = []
for ij in people{
    firstNameArray.append(ij["firstName"]!)
}
print(firstNameArray)


//3. You are given an array of dictionaries. Each dictionary in the array contains exactly 2 keys “firstName” and “lastName”. Create an array of strings called fullNames that contains the values for “firstName” and “lastName” from the dictionary separated by a space.

var peopleFullName: [[String:String]] = [

[

"firstName": "Calvin",

"lastName": "Newton"

],

[

"firstName": "Garry",

"lastName": "Mckenzie"

],

[

"firstName": "Leah",

"lastName": "Rivera"

],

[

"firstName": "Sonja",

"lastName": "Moreno"

],

[
    "firstName": "Noel",

    "lastName": "Bowen"

]

]

var fullName:[String] = []
for i in peopleFullName{
    
    fullName.append("\(i["firstName"]!) \(i["lastName"]!)")
    //dictArr3.append(contentsOf: i["firstName"]! + i["lastName"]!)
}
print(fullName)

//4. You are given an array of dictionaries. Each dictionary in the array describes the score of a person. Find the person with the lowest score and print his full name.

var arrayOfDictionary: [[String:Any]] = [

[

"firstName": "Calvin",

"lastName": "Newton",

"score": 13

],

[

"firstName": "Garry",

"lastName": "Mckenzie",

"score": 12

],

[

"firstName": "Leah",

"lastName": "Rivera",

"score": 10

],

[

"firstName": "Sonja",

"lastName": "Moreno",

"score": 3

],

[

"firstName": "Noel",

"lastName": "Bowen",

"score": 16

]

]
var score = arrayOfDictionary.first?["score"] as? Int ?? 0
var personname = arrayOfDictionary.first?["firstName"] as? String ?? ""
for i in arrayOfDictionary{
    if score > i["score"] as! Int{
        score = i["score"] as? Int ?? 0
        personname = "\(i["firstName"] as? String  ?? "") \(i["lastName"] as? String ?? "")"
//        personname = i["firstName"] as? String  ?? ""
//        personname += i["lastName"] as? String ?? ""
    }
}

print(personname)

//5. You are given an array of dictionaries. Each dictionary in the array describes the score of a person. Print the leaderboard in the following format:

var scoreOfPerson: [[String:Any]] = [

[

"firstName": "Calvin",

"lastName": "Newton",

"score": 13

],

[

"firstName": "Garry",

"lastName": "Mckenzie",

"score": 23

],

[

"firstName": "Leah",

"lastName": "Rivera",

"score": 10

],

[

"firstName": "Sonja",

"lastName": "Moreno",

"score": 3

],

[

"firstName": "Noel",

"lastName": "Bowen",

"score": 16

]

]
//
var count = 1
scoreOfPerson.sort(by: { ($0["score"] as? Int ?? 0) > ($1["score"] as? Int ?? 0)})
for i in scoreOfPerson{
    print("\(count). \(i["firstName"] as? String ?? "") \(i["lastName"] as? String ?? "") - \(i["score"] as? Int ?? 0)")
    count += 1
}

//extra

//var count = 1
////var score1:[Int] = people5.first?["score"] as? Int ?? 0
////var name5:[String] = people5.first?["firstName"] as? String ?? ""
////for i in people5{
////    if score1 > i["score"] as! Int{
////      score1 = i["score"] as? Int ?? 0
////        name5 = "\(i["firstName"] as? String  ?? "") \(i["lastName"] as? String ?? "")"
////
////
////    }
////  print("\(count). \(i["firstName"] as? String ?? "") \(i["lastName"] as? String ?? "") - \(i["score"] as? Int ?? 0)")
////  //print("\(count). \(name1) - \(i["score"] as? Int ?? 0)")
////    count += 1
////}
////print(people5[0]["firstName"]!)
////for i in people5{
////    if let xc = people5["score"].sorted(using: >){
////
////    }
////}
//
////for i in people5{
////    if score1 < i["score"] as? Int ?? 0{
////        score1 = i["score"] as? Int ?? 0
////        name5 = i["firstname"] as? String ?? ""
////
////    }
////    print("\(count). \(i["firstName"] as? String ?? "") \(i["lastName"] as? String ?? "") - \(i["score"] as? Int ?? 0)")
////    count += 1
////}
////var count = 1
////var score1 = 0
////var name51 = ""
////for i in people5{
////    if score1 > i["score"] as? Int ?? 0{
////        score1 = i["score"] as? Int ?? 0
////        name51 = "\(i["firstName"] as? String ?? "") \(i["lastName"] as? String ?? "")"
////
////    }
////
////}
////for i in score1{
////    for j in name51{
////        print("\(count). \(name51) - \(score1)")
////        count += 1
////    }
////}
////var score5:[Int?] = people5.first?["score"] as? Int ?? 0
////var personname5:[String?] = people5.first?["firstName"] as? String ?? ""
////for i in people5{
////    if score5 > i["score"] as! Int{
////        score5 += i["score"] as? Int ?? 0
////        personname5 += "\(i["firstName"] as? String  ?? "") \(i["lastName"] as? String ?? "")"
//////        personname = i["firstName"] as? String  ?? ""
//////        personname += i["lastName"] as? String ?? ""
////    }
////    //print("\(personname5) \(score5)")
////}
////print("\(personname5) \(score5)")
//////print(personname)
/////
/////
//
////for i in people5{
////    if let people 51 = people5.sort(by: $0["score"] > $1["score"]){
////
////    }
////}
////for i in people5{
////    var sort:[Int?] = i["score"].sorted(using: >) as? [Int] ?? 0
////    print(sort)
////
////}
//var count = 0
//var score5 = people5.first?["score"] as? Int ?? 0
//var score55:[Int]?
//var personname5 = people5.first?["firstName"] as? String ?? ""
//var personname55:[String]?
//
//for i in people5{
//    if score5 > i["score"] as! Int{
//        score5 = i["score"] as? Int ?? 0
//        score55?.append(score5)
//        personname5 = "\(i["firstName"] as? String  ?? "") \(i["lastName"] as? String ?? "")"
//        personname55?.append(personname5)
////        personname = i["firstName"] as? String  ?? ""
////        personname += i["lastName"] as? String ?? ""
//    }
//}
////for i in score55 as? Int ?? 0{
////    for j in personname55 as! String {
////        print("\(count). \(j) - \(i)")
////        count += 1
////    }
////}
////var arr56:[Int]?
////for i in people5{
////    arr56?.append(i["score"]! as! Int)
////
////}
//
////for i in people5{
////
////    print("\(i["score"])")
////    if let score55 = i.f["score"]{
////
////    }
////
////}

//6. You are given an array of integers. Find out the frequency of each one.The frequency of a number is the number of times it appears in the array.Print the numbers in ascending order followed by their frequency.

var numbers = [1, 2, 3, 2, 3, 5, 2, 1, 3, 4, 2, 2, 2]

var ascendingOrder:[Int:Int] = [:]
for i in numbers.sorted(){
    ascendingOrder[i] = (ascendingOrder[i] ?? 0) + 1
}
print(ascendingOrder)
for (key,value) in ascendingOrder.sorted(by: <){
    print("\(key) \(value)")
}

//var count = 0
//for ij in numbers6.sorted().indices{
//
//    if (numbers6[ij]==numbers6[ij+1]) {
//        if(ij == numbers6.count-2){break}
//        count += 1
//    }else{
//        print("\() \(count)")
//        count=0
//    }
//
//
//}

//var count6 = 1
//for i in numbers6.sorted(){
//    if numbers6[i] == numbers6[i+1] {
//        count6 = count6 + 1
//        print("\(numbers6[i]) \(count6)")
//    }else{
//        print("\(i) \(count6)")
//        count6 = 1
//    }
//}


//for i in numbers6.sorted(){
//    if ({($0) == ($1)}){
//        count6 += 1
//        print("\(i) \(count6)")
//    }else{
//        count6 = 1
//    }
//}




//var count6 = 0
//for i in numbers6.sorted().indices{
//    if ({($0) == ($1)}){
//        count6 += 1
//    }else
//    {
//        count6 = 0
//    }
//}

