//
//  main.swift
//  Swift_Dictionaries
//
//  Created by Mahaboobsab Nadaf on 01/09/16.
//  Copyright © 2016 com.NeoRays. All rights reserved.
//

import Foundation



var myDict:[Int:String] = [1:"Objective-C", 2:"iOS", 3:"Swift"]

var myVar = myDict[1]
print("Value of myDict Object 1 is : \(myVar)")
print("Value of myDict Object 2 is : \(myDict[2])")
print("Value of myDict Object 3 is : \(myDict[3])")

print("If no key Exists then : \(myDict[4])")

print(myDict)

//Modifying Dictionaries

var someVal =  myDict.updateValue("New Value for Key 1", forKey: 1)

print("Some Values : \(someVal)")


var objectAt1 = myDict[1]

print("Object at index 1 is : \(objectAt1)")

print(myDict)

myDict[2] = "Second Value Directly"

print(myDict)


var removedval = myDict.removeValueForKey(2)
print("Removed Value at index 2 : \(removedval)")

print("Value of myDict after removeValueForKey Object 2 is : \(myDict[2])")
print(myDict)


//Iterating Over a Dictionary

var myNewDict : [Int : String] = [1 : "One", 2:"Two", 3:"Three",4:"Four"];

for (key,Value) in myNewDict{

    print("Key Val is : \(key) and Object Value is : \(Value)")
}

//Iterating Over a Dictionary using enumerate
for (key,Value) in myNewDict.enumerate(){
    
    print("Using enumerate Key Val is : \(key) and Object Value is : \(Value)")
}

//Convert to Arrays

let myNewDictKeys = myNewDict.keys
print("myNewDictKeys Keys : \(myNewDictKeys)")

let myNewDictKeysArray = [Int](myNewDict.keys)
print("myNewDictKeysArray Keys : \(myNewDictKeysArray)")

let myNewDictKeysValue = myNewDict.values
print("myNewDictKeysValue Value : \(myNewDictKeysValue)")

let myNewDictKeysArrayValue = [String](myNewDict.values)
print("myNewDictKeysArrayValue Value : \(myNewDictKeysArrayValue)\n")


//Printing Keys

for keys in myNewDictKeysArray{

    print("Key is : \(keys)")

}

for keys in myNewDictKeysArrayValue{
    
    print("Values is : \(keys)")
    
}


//The count Property

let myDictForCount : [Int:String] = [1:"Hi",2:"Hello",3:"How r u",4:"Good Bye"]
print("Total items of myDictForCount is : \(myDictForCount.count)")


let myDictForCount2 : [Int:String] = [5:"Apple",6:"Google"]

print("Total items of myDictForCount2 is : \(myDictForCount2.count)")

let myDictForCount3 : [Int:String] = [Int:String]()

print("Total items of myDictForCount3 is : \(myDictForCount3.count)")

//The empty Property

print("myDictForCount is Empty : \(myDictForCount.isEmpty)")
print("myDictForCount2 is Empty : \(myDictForCount2.isEmpty)")
print("myDictForCount3 is Empty : \(myDictForCount3.isEmpty)")


