//
//  main.swift
//  Swift_Loops
//
//  Created by Mahaboobsab Nadaf on 01/09/16.
//  Copyright © 2016 com.NeoRays. All rights reserved.
//

import Foundation


//for-in Loop

var someIndex : [Int] = [10,20,30,40]

for items in someIndex{

    print("The Val of items is : \(items)")
}

//Swift – for Loop


var someInts:[Int] = [10, 20, 30]
for index in 0 ..< 3 {
    print( "Value of someInts[\(index)] is \(someInts[index])")
}

for generateNum in 0..<10{

    print("Val of Generate Num from 0-9 is : \(generateNum)")
    
}

//Swift – while Loop


var indexForWhile = 10

while(indexForWhile < 20){


    print("The Value of indexForWhile is : \(indexForWhile)")
    
    indexForWhile += 1;
}

//Swift – do-while Loop

var doWhileIndex = 10

repeat{

    print("The Value of do is : \(doWhileIndex)")
    doWhileIndex +=  1
}
while doWhileIndex < 20



//Swift – continue Statement

var ContinueIndex = 10
repeat{
    ContinueIndex = ContinueIndex + 1
    if( ContinueIndex == 15 ){
        continue
    }
    print( "Value of ContinueIndex is \(ContinueIndex)")
}while ContinueIndex < 20





//Swift – break Statement

var varForBrak = 10

repeat {

    varForBrak += 1
    
    if (varForBrak == 15){
    
        break
    }
    print("The Val of var brak is : \(varForBrak)")
    
}while varForBrak < 20













