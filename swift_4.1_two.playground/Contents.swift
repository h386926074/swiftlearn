//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
let two = 2

let three = 3
let pointOneFourOneFiveNine = 0.14159
let pi = Double(three) + pointOneFourOneFiveNine

let integerPi  = Int(pi)

typealias AudioSample = UInt16
var maxAmplitudeFound = AudioSample.min

//bool
let orangeAreOrange = true
let turnipsAreDelicious = false

let i = 1
if i == 1 {   //  必须是一个 bool 结果才能放if后的参数
    print("one")
}

//元组
let http404Error = (404,"Not Found")
let (statusCode,statusMessage) = http404Error
print("The status code is \(statusCode)")
print("The status message is \(statusMessage)")

let (justTheStatusCode,_) = http404Error
print("The status code is \(justTheStatusCode)")

let http200Status = (statusCode:200,description:"OK")

print("The status code is \(http200Status.description)")


