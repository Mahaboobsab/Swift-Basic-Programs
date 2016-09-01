//
//  main.swift
//  Swift–Operators
//
//  Created by Mahaboobsab Nadaf on 31/08/16.
//  Copyright © 2016 com.NeoRays. All rights reserved.
//

import Foundation

print("Addition Program\n")

var num1 =  10
var num2 = 20
var resultOfNum1Num2 = num1 + num2
print("The Sum of \(num1) and \(num2) is : \(resultOfNum1Num2) ")

print("Substraction Program\n")

var num1S =  10
var num2S = 20
var resultOfNum1Num2S = num1S - num2S
print("The Substraction of \(num1S) and \(num2S) is : \(resultOfNum1Num2S) ")

print("Div Program\n")

var num1D =  400
var num2D = 20
var resultOfNum1Num2D = num1D / num2D
print("The Div of \(num1D) and \(num2D) is : \(resultOfNum1Num2D) ")
print("Multiplication Program\n")

var num1M =  10
var num2M = 20
var resultOfNum1Num2M = num1M * num2M
print("The Multiplication of \(num1M) and \(num2M) is : \(resultOfNum1Num2M) ")

//Increment / Decement
var incrementNum = 10
print("Value of incrementNum before : \(incrementNum)")
incrementNum += 1
print("Value of incrementNum After : \(incrementNum)")

var decrementNum = 10
print("Value of decrementNum before : \(decrementNum)")
decrementNum -= 1
print("Value of decrementNum After : \(decrementNum)")





//Bitwise Operators

var bitWiseOne = 60

var bitWiseTwo = 13
var bitWiseAnd = bitWiseOne & bitWiseTwo
var bitWiseOr = bitWiseOne | bitWiseTwo
var bitWiseExOr = bitWiseOne ^ bitWiseTwo

print("Bitwise and of 60 and 13 is \(bitWiseAnd)")


print("Bitwise OR of 60 and 13 is \(bitWiseOr)")


print("Bitwise EX-OR of 60 and 13 is \(bitWiseExOr)")

var bitWiseNot = 10
bitWiseNot = ~bitWiseNot
print("Bitwise NOT of 10 is \(bitWiseNot)")


//Range Operators

var statusCode = 222
switch statusCode {
    
case 10 ... 100:
    print("Range Operators success 1")
case 101 ... 200:
    print("Range Operators success 2")
case 200 ... 299:
    print("Range Operators success 3")
default:
    print("Range Operators failure")
}

let myRange = 1...3

let myArray = ["a", "b", "c", "d", "e"]
myArray [myRange] // ["b", "c", "d"]
print(myArray)
print(myArray [myRange])



//Half-Open Range: a..<b

let half_OpenmyRange = 1..<3

let half_OpenmyArray = ["a", "b", "c", "d", "e"]
half_OpenmyArray[half_OpenmyRange] // ["b", "c"]
print(half_OpenmyArray)
print(half_OpenmyArray[half_OpenmyRange])


//Ternary Conditional

let x = 5
let y = 4
let z = x < 4 ? 6 : 8
print("Tha val of z is  : \(z)")

//Operators Precedence

var operatorsPrecedence = 7 + 3 * 2;
print("Val of operator Precedence is : \(operatorsPrecedence)")

