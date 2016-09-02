//
//  main.swift
//  SwiftFunctions
//
//  Created by Mahaboobsab Nadaf on 02/09/16.
//  Copyright © 2016 com.NeoRays. All rights reserved.
//

import Foundation

func student(name : String) -> String{


    return name
}


func display(no1 : Int) -> Int {
    let a = no1
    return a
    
}
print(student("Meheboob Nadaf"));
print(student("Calling Function"))



print(display(786))
print(display(100))

//Addtion program

func addNumbers(num1 : Int, num2 : Int) -> Int {
    return num1 + num2
}
func addThreeNumbers(num1 : Int, num2 : Int, num3 : Int) -> Int {
    return num1 + num2 + num3
}
print("Addition of 10 and 20 is : \(addNumbers(10,num2: 20))")

let result = addThreeNumbers(10, num2: 20, num3: 30)


print("Addition of 10,20 and 30 is : \(result)")


//Functions without Parameters


func myFullName() -> String {
    
    return "Meheboob Nadaf"
}

print("My Name is : \(myFullName())")



//Functions with Return Values

func findingSmalletAndLargest(myArray: [Int]) ->(smallest : Int, largest : Int){

    var largest = myArray[0]
    var smallest = myArray[0]
    
    for i in myArray[1..<myArray.count] {
        
        if i < smallest {
            
            smallest = i
        }
            
        else if i > largest{
            
            largest = i
            
        }
    }
    return (smallest,largest)
    
}

let numbers = findingSmalletAndLargest([10,20,4,66,79,-7])

print("Total Result : \(numbers)")


print("Smallets Value is : \(numbers.smallest)")
print("Largest Value is : \(numbers.largest)")

//Functions without Return Values


func functionWithoutReturnType(num1 : Int, num2 : Int) {
    
    let a = num1 + num2
    let b = num1 - num2

    print("Addition is : \(a)")
    print("Substraction is : \(b)")
}



functionWithoutReturnType(20, num2: 50)


//Functions with Optional Return Types

func findingMinimumAndMaximum(myArray: [Int]) ->(minimum : Int, maximum : Int)?{
    
    if myArray.isEmpty {
        return nil
    }
    
    var minimum = myArray[0]
    var maximum = myArray[0]
    
    for i in myArray[1..<myArray.count] {
        
        if i < minimum {
            
            minimum = i
        }
            
        else if i > maximum{
            
            maximum = i
            
        }
    }
    return (minimum,maximum)
    
}

//Error
//let minMaxNumbers = findingMinimumAndMaximum([])

if let minMaxNumbers = findingMinimumAndMaximum([77,79,55,9,-5,2,7]){

print("Total Result : \(minMaxNumbers)")


print("minimum Value is : \(minMaxNumbers.minimum)")
print("maximum Value is : \(minMaxNumbers.maximum)")

}


//Functions Local Vs External Parameter Names

//Local Parameter Names

func localParameters(number  :Int) {
    print(number)
}

localParameters(786)


//External Parameter Names

func pow(firstArg a: Int, secondArg b: Int) -> Int {
    var res = a
    for _ in 1..<b {
        res = res * a
    }
    print(res)
    return res
}
pow(firstArg:5, secondArg:3)

func powFunction(firstArgument a : Int, secondArgument b : Int ) -> Int {
    var result = a
    
    for _ in 1..<b {
        result = result*a
    }
    print(result)
   return result
}

let res = powFunction(firstArgument: 5, secondArgument: 4)

print("5 pow of 4 is : \(res)")


//Variadic Parameters

func vari<N>(members: N...){
    for i in members {
        print(i) }
}
vari(4,3,5)
vari(4.5, 3.1, 5.6)
vari("Swift", "Enumerations", "Closures")



//func variadicParameters<N>(memborsDetails : N...) -> Int{

func variadicParameters<N>(memborsDetails : N...){
    for i in memborsDetails {
        
        print(i)
    }
    //return 3
}
print("Variadic Parametrs Integers \(variadicParameters(2,5,6,8))")

print("Variadic Parametrs FloatingFoint \(variadicParameters(2.4,5,6.7,8))")

print("Variadic Parametrs String \(variadicParameters("Apple","Microdoft","Google","myCompany",5))")



//Constant, Variable, and I/O Parameters

func swapTwoNumbers(inout a1 : Int, inout b1 : Int){
    
    let t = a1
    a1 = b1
    b1 = t
    
}

var num1  = 2
var num2  = 4

print("Before Swaping Values of num1 \(num1) and Values of num2 \(num2)")

swapTwoNumbers(&num1, b1: &num2)

print("After Swaping Values of num1 \(num1) and Values of num2 \(num2)")

//Function Types & its Usage



func devideFunc(num1 : Float, num2 : Float) -> Float {
    

    return num1 / num2
}

print(devideFunc(20 ,num2: 10))


//Function return type void

func inputstr() {
    print("Swift Functions")
    print("Types and its Usage")
}

inputstr()


//Using Function Types

//func sum(a: Int, b: Int) -> Int {
//    
//    return a + b
//}
//var addition: (Int, Int) -> Int = sum
//print("Result: \(addition(40, 89))")
//
//func myNameUsingFunctionType(name : String, surname : String) -> String {
//    return name+surname
//}
//
//var fullnameFun:(String, String) -> String = myNameUsingFunctionType
//
//
//print("My Full Name : \(fullnameFun("Meheboob ","Nadaf"))")






//Function Types as Parameter Types & Return Types

func sum(a: Int, b: Int) -> Int {
    return a + b
}
var addition: (Int, Int) -> Int = sum

print("Result: \(addition(40, 89))")
func another(addition: (Int, Int) -> Int, a: Int, b: Int) {
    print("Result: \(addition(a, b))")
}
another(sum, a: 10, b: 20)



func newSum(a : Int, b: Int) -> Int {
    return a + b
}

var additionFirst : (Int, Int) -> Int = newSum

print("Result of New Sum is : \(additionFirst(40,89))")


func addingFunInFun(additionFirst : (Int, Int) -> Int, a : Int, b: Int) {
    
    print("Result of New Sum is : \(additionFirst(a,b))")
    
}

addingFunInFun(newSum, a: 10, b: 20)


//Nested Functions

func calcDecrement(forDecrement name: String) -> () -> String {
    
    var overallDecrement = name
    
    func decrementerName() -> String {
        
        //overallDecrement -= total
        
        return overallDecrement + " Nadaf"
    }
    return decrementerName
}
let decrem = calcDecrement(forDecrement: "Meheboob")
print(decrem())

