//
//  main.swift
//  Swift_Literals
//
//  Created by Mahaboobsab Nadaf on 31/08/16.
//  Copyright © 2016 com.NeoRays. All rights reserved.
//

import Foundation

print("Swift_Literals !!!!")

let decimalInteger = 17 //17 in Decimal Notation

let binaryInteger = 0b10001 //17 in Binary Notation
let octalInteger = 0o21 // 17 in Octal Notation

let hexadecimalInteger = 0x11 //17 in hexadecimal

print("\nDecimal 17 is \(decimalInteger)")
print("Binary 17 is \(binaryInteger)")
print("Octal 17 is \(octalInteger)")
print("Hexadecimal 17 is \(hexadecimalInteger)")

//Floating-point Literals


let decimalDouble = 12.18734
let exponantDouble = 1.3445e1
let hexadecimalDouble = 0xC.3p0

print("\nDecimal Double is : \(decimalDouble)")
print("Exponant Double is : \(exponantDouble)")
print("Hexadecimal Double is : \(hexadecimalDouble)")

//String Literals

let strigLiteral = "This is String Literal"
print(strigLiteral)


let stringLiteral = "Hello!!\tWorld\n\nHello\'Swift'"
print(stringLiteral)

//Boolean Literals

let trueBolean = true
print("Boolean Value is : \(trueBolean)")

let falseBolean = false
print("Boolean Value is : \(falseBolean)")



