//
//  main.swift
//  Type Aliases
//
//  Created by Meheboob Nadaf on 30/08/16.
//  Copyright © 2016 com.NeoRays. All rights reserved.
//

import Foundation

print("Hello, World!")


typealias Feet = Int
var distance: Feet = 100
print(distance)


typealias Temp = Float32

var temprature : Temp = 33.66
print(temprature)


//Type Safety

//var varA = 42
//varA = "This is hello"
//print(varA)


//Type Inference

// varA is inferred to be of type Int
var varA = 42
print(varA)


// varB is inferred to be of type Double
var varB = 3.14159
print(varB)


// varC is also inferred to be of type Double 
var varC = 3 + 0.14159
print(varC)




//Variable Declaration
var myVar = 77
print(myVar)


//Type Annotations

var myVariableForAnnotations = 42
print(myVariableForAnnotations)


var myVariableTypeIs:Float
myVariableTypeIs = 7.890777
print(myVariableTypeIs)



//Naming Variables

var _myVarWithUnderscore = "Hi, Meheboob!!!!"

print(_myVarWithUnderscore)


//Printing Variables

var myName = "Meheboob"

var mySalary = 12000


print("The Salary of \(myName) is more than \(mySalary) Rupees")


//Swift–Optionals

var myStringToCheckOptionals : String? = nil
if myStringToCheckOptionals != nil{

    print(myStringToCheckOptionals)
}

else{

    print("Variable myStringToCheckOptionals is nil");
}




//Automatic Unwrapping

var myString:String!

myString = "Hello, Meheboob!!!!!"
if myString != nil {
    print(myString)
}else{
    print("myString has nil value")
}

//Optional Binding

var myStringForOptionalBinding : String?

myStringToCheckOptionals = "Variable for myStringForOptionalBinding"

if let myStringNew = myStringToCheckOptionals{

    print("My New String has - \(myStringNew)")
}

else{


    print("My New String does not have a Value")
}
