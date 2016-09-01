//
//  main.swift
//  Swift_Decision Making
//
//  Created by Mahaboobsab Nadaf on 01/09/16.
//  Copyright © 2016 com.NeoRays. All rights reserved.
//

import Foundation

//if Condition

var a = 20

if a > 10{

    print("The value of a is greather than 10")
}

var myNum : Int = 50

if myNum > 56{

    print("The Val of myNum is grather than 56")
}

print("The val of myNum is \(myNum)")

//if-else Statement


var num1 : Int = 33

if num1 < 22{

   
     print("The Val of num1 is less than 22")
}

else{
 print("The Val of num1 is greather than 22")
}
 print("The Val of num1 is : \(num1)")





//if...else if...else Statement

var checkNum : Int = 100

if checkNum == 50{

    print("The val of CheckNum is 50")
}
else if checkNum == 100{

    print("The val of CheckNum is 100")
}
else if checkNum == 150{

    print("The Val of CheckNum is 150")
}

else{

    print("The Val of CheckNum is : \(checkNum)")
}

//Nested If Statements

var checkFirst : Int = 10
var checkSecond : Int = 20

if checkFirst == 10{


    print("First Condition is Satisfied...")
    
    if checkSecond == 20{
    
    
        print("Second Condition is also Satisfied")
        
    }
    
}

print("The Val of var checkFirst is : \(checkFirst) and the Val of Var checkSecond is : \(checkSecond)")


//Switch Statement

var index = 40

switch index{
case 10 :
    print("The Val if index is 10")
    
case 15,20 :
    print("The Val if index is Either 15 or 20")
    
case 30 :
    print("The Val if index is 30")
    
case 40 :
    print("The Val if index is 40")
    
default :
    print("Does not Match")

}

var indexFallthrough = 30

switch indexFallthrough{
case 10 :
    print("The Val fallthrough index is 10")
    fallthrough
    
case 15,20 :
    print("The Val fallthrough index is Either 15 or 20")
    fallthrough
    
case 30 :
    print("The Val fallthrough index is 30")
    fallthrough
    
case 40 :
    print("The Val fallthrough index is 40")
    fallthrough
    
default :
    print("Does not Match")
    
}
