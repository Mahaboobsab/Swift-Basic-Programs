//
//  main.swift
//  Swift_Arrays
//
//  Created by Mahaboobsab Nadaf on 01/09/16.
//  Copyright © 2016 com.NeoRays. All rights reserved.
//

import Foundation

//an empty array of Int type having 3 elements and the initial value as zero:

var someInts = [Int](count: 3, repeatedValue: 10)
//someInts = [10,20,30];
var someVar = someInts[0]

print( "Value of first element is \(someVar)" )
print( "Value of second element is \(someInts[1])" )
print( "Value of third element is \(someInts[2])" )


//Modifying Arrays

var myArray = [Int]()

myArray.append(10)
myArray.append(20)
myArray += [40]

var someVariable = myArray[0]

print( "Value of first element myArray is \(someVariable)" )
print( "Value of second element  myArray is \(myArray[1])" )
print( "Value of third element myArray is \(myArray[2])" )

//modify an existing element 

myArray[2] = 50

print( "Value of third element After changing myArray is \(myArray[2])" )

var someCompanyies = [String]()

someCompanyies.append("Apple")
someCompanyies.append("Google")
someCompanyies.append("Yahoo")
someCompanyies.append("myCompany")
someCompanyies += ["NeoRays"];

for items in someCompanyies{

    print(items)
}


//let array = ["Apples", "Peaches", "Plums"]

for (index, item) in someCompanyies.enumerate() {
    print("Found \(item) at position \(index)")
}




//Adding Two Arrays

var intsA = [Int](count:2, repeatedValue: 2)
var intsB = [Int](count:3, repeatedValue: 1)
var intsC = intsA+intsB

print("Values of A and B Array is :\(intsC)")

for items in intsC{

    print(items)
}


//The count Property
print("Count of A Array is :\(intsA.count)")

print("Count of B Array is :\(intsB.count)")

print("Count of C Array is :\(intsC.count)")

//The empty Property

intsC = [Int]()
print("Count of A Array is Empty ? :\(intsA.isEmpty)")

print("Count of B Array is Empty ?  :\(intsB.isEmpty)")

print("Count of C Array is Empty ? :\(intsC.isEmpty)")
















