//
//  main.swift
//  Swift_Strings
//
//  Created by Mahaboobsab Nadaf on 01/09/16.
//  Copyright © 2016 com.NeoRays. All rights reserved.
//

import Foundation

//Create a String

// String creation using String literal
var stringA = "Hello, Meheboob!!!"
print(stringA)

// String creation using String Instance

var stringB = String("Hello, Meheboob!!!")
print(stringB)

var checkEmptyStr = ""

if checkEmptyStr.isEmpty{

    print("checkEmptyStr is Empty")
}
else{

      print("checkEmptyStr is not Empty")
    
}


// Empty string creation using String instance

let emptyStrInstance = String()

if emptyStrInstance.isEmpty{
    
    print("emptyStrInstance is Empty")
}
else{
    
    print("emptyStrInstance is not Empty")
    
}

// stringModified can be modified

var stringModified = "Hello, Meheboob!"
stringModified += "--You are winner !!!--"
print( stringModified )

// stringUnModified can not be modified

//let stringUnModified = String("Hello, Swift!")
//stringUnModified += "--Readers--"
//print( stringUnModified )

//String Interpolation

var numVar = 20

let constVar = 100

var mulVar : Float = 20.0

print("\(numVar) times \(constVar) is : \(mulVar * 100)")



//String Concatenation

var firstString = "Meheboob"
var secondString = " Nadaf"

var myFullName = firstString + secondString

print("My Full Name is : \(myFullName)")

//String Length

var stringLength = "Hello, Swift!"

var lengthOfstr = stringLength.characters.count

print( "\(stringLength), length is \(lengthOfstr)" )

//String Comparison

var stringComparison1 = "Hello World"
var stringComparison2 = "Hello World"

if stringComparison1 == stringComparison2{

    print("\(stringComparison1) is Eqlaul to \(stringComparison2)")
}
else{

print("\(stringComparison1) is not Eqlaul to \(stringComparison2)")
}

//Unicode Strings
var unicodeString = "Dog!!🐶"

print("Dof with Symbol \(unicodeString)")
print("UTF-8 Codes: ")
for code in unicodeString.utf8 {
    print("\(code) ")
}
print("\n")

print("UTF-16 Codes: ")
for code in unicodeString.utf16 {
    print("\(code) ")
}

