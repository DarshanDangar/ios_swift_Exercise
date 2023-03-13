import UIKit

//Array

//1.Write a Swift program to check whether the first element and the last element of a given array of integers are equal. The array length must be 1 or more.
    //Input: [1,2,3,1]
    //Output: true

var equalFirstLastDigit: [Int] = [1,2,3,1]
if equalFirstLastDigit.count >= 1{
    if equalFirstLastDigit[0] == equalFirstLastDigit[equalFirstLastDigit.count-1]{
        print("true")
    }
}else{
    print("Enter new array")
}

// Ans

// true

//2. Write a Swift program to create a new array with double the length of a given array of integers and its last element is the same as the given array. The given array will be length 1 or more. By default, a new integer array contains all 0's.
    //Input: [1,2,3,4]
    //Output: [0,0,0,0,0,0,0,4]

var arr: [Int] = [1,2,3,4]
var arrDoubleLength: [Int] = Array(repeating: 0, count: equalFirstLastDigit.count * 2 - 1)
arrDoubleLength.append(equalFirstLastDigit.endIndex)

//3. Write a Swift program to create a new array, taking first two elements from a given array of integers. If the length of the given array is less than 2 use the single element of the given array
    //Input: [0,1,2,3]
    //Output: [0,1]

var integerArray:[Int] = [0,1,2,3]
var takingFirstTwoElement:[Int] = []
takingFirstTwoElement.append(takingFirstTwoElement.startIndex)
takingFirstTwoElement.append(takingFirstTwoElement.index(after: takingFirstTwoElement.startIndex))
print(takingFirstTwoElement)

// Ans

// [0, 1]

//4. Write a Swift program to take one array and find out maximum number from that array
    //Input: [0,50,100,20,80,150]
    //Output: 150

var integerArr:[Int] = [0,50,100,20,80,150]
integerArr.max()

//other

integerArr.sort()
var updateArrray = integerArr[integerArr.count - 1]
print(updateArrray)
var temp:[Int] = []

/*for i in integerArray{
    for j in integerArray{
        if integerArray[i] > integerArray[j]{
            temp = integerArray[i]
 integerArray[i] = integerArray[j]
            integerArray[j] = temp
        }
    }
}
for i in integerArray{
    print(integerArray[i])
}*/
 
//5. Write a Swift program to take one array and sort it in descending order.
    //Input: [0,5,6,2,10]
    //Output: [10,6,5,2,0]

var sortArray:[Int] = [0,5,6,2,10]
sortArray.sort(by: >)

//other
sortArray.sort()
print(Array(sortArray.reversed()))

//6. Print all the numbers from listOfNumbers that are divisible by at least one number from divisors
//Input: var listOfNumbers = [1, 2, 3, 10, 100]
//var divisors = [2, 5]
//Output: 2,10,100

var listOfNumbers = [1,2,3,10,100]
var divisors = [2,5]
var numberArr:[Int] = []

for i in listOfNumbers{
    for j in divisors{
        if (i % j) == 0{
            numberArr.append(i)
            print("number is \(i)")
            break
        }
    }
}
print(numberArr)

//extra practice

for i in listOfNumbers.indices{
    print(i)
}
for (i, k) in listOfNumbers.enumerated(){
    print(i, k)
}

//7. Try all Array methods: new

var arrMethod:[Int] = [1,2,3,4,5]
var arrOperation:[Int] = [6,7,8]
arrMethod += arrOperation
print(arrMethod)
var arrOtherOpertion = arrMethod + arrOperation
print(arrOtherOpertion)

print(arrOtherOpertion[2])
arrOtherOpertion.first
arrOtherOpertion.last
print(arrOtherOpertion.customMirror)
arrOtherOpertion.description
arrOtherOpertion.distance(from: 1, to: 6)
arrOtherOpertion.hashValue
arrOtherOpertion.capacity
arrOtherOpertion.randomElement()
arrOtherOpertion.popLast()
