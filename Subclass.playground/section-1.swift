// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Person {
    
    var Name:String = "Initial Name"
    
    init () {
        
    }
    
    func Walk() {
        println("I'm walking")
    }
}

var a = Person()
a.Name = "Alice"
a.Walk()

class Superhuman : Person {
    
    var AlterEgoName:String = "Clark"
    
    override init () {
            super.init()
        
        super.Name = "Super Duper"
    }
    
    func Fly() {
        println("I'm flying")
    }
    
    override func Walk(){
        println("I'm walking really fast")
        
        super.Walk()
    }
    
}

var b = Superhuman()
b.Walk()





