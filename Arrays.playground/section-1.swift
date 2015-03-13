// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var myArray:[String] = ["book", "cat", "pingu", "waffle"]

myArray[1]

myArray.count
myArray.insert("raptor", atIndex: 4)

myArray.count
myArray[4]

myArray.append("tree")
myArray += ["elephant", "car"]

myArray.count

myArray.removeAtIndex(2)

var mySecondArray:[Int] = [Int]()
mySecondArray.append(3)
mySecondArray.count
mySecondArray[0]