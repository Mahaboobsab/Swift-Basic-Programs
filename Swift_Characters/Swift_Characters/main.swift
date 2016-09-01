//
//  main.swift
//  Swift_Characters
//
//  Created by Mahaboobsab Nadaf on 01/09/16.
//  Copyright © 2016 com.NeoRays. All rights reserved.
//

import Foundation

let charOne : Character = "A"
let charTwo : Character = "B"

print("The Val of charOne is : \(charOne)")
print("The Val of charTwo is : \(charTwo)")

//let charErr : Character = "AB"



//Empty Character Variables is error

//let charOneEmpty : Character = ""
//let charOneEmpty : Character = ""
//
//print("The Val of charOne is : \(charOneEmpty)")
//print("The Val of charTwo is : \(charOneEmpty)")


let myName = "Meheboob"

for ch in myName.characters{
    print(ch)
}

//Concatenating Strings with Characters

var varName : String  = "Meheboob"
let appendG : Character = "G"
varName.append(appendG)
print("String After Appending is : \(varName)")























