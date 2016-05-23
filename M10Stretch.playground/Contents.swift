//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


//let currentYear = 2016
//
//struct Person {
//    
//    let firstName: String
//    let lastName: String
//    let yearOfBirth: Int
//    let age: Int
//    
//    init(firstName: String, lastName: String, yearOfBirth: Int, age: Int) {
//        self.firstName = firstName
//        self.lastName = lastName
//        self.yearOfBirth = yearOfBirth
//        self.age = age
//    }
//    
//}
//
//
//var newPerson = Person(firstName: "Joe", lastName: "Shmo", yearOfBirth: 1986, age: 30)
//
//print(newPerson.yearOfBirth)
//print("\(newPerson.firstName) \(newPerson.lastName)")






// Getter

let currentYear = 2016

struct Person {
    
    let firstName: String
    let lastName: String
    var yearOfBirth: Int
    var age: Int {
        get {
            return (currentYear - yearOfBirth)
        }
        set (newAge){
            print ("Was set")
            yearOfBirth = currentYear - newAge
        }
    }
    
}
var newPerson = Person(firstName: "John", lastName: "Schmoe", yearOfBirth: 1973)

print(newPerson.yearOfBirth)
print("\(newPerson.firstName) \(newPerson.lastName)")

print(newPerson.age)
newPerson.age = 22

print(newPerson.age)
print(newPerson.yearOfBirth)