//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)

var serverResponseCode: Int? = 404
var surveyAnswer: String?

let possibleString:String? = "An optional string"
let forcedString:String = possibleString!

//一元操作符
-6

1 > 2

//字符串
var a = ""
var b = "  "
a.isEmpty
b.isEmpty

let c = "你好啊a"
c.utf8CString
for  d  in c.characters {
    print(d)
}

for character in c{
    print(character)
}

var Dog:String = String()
Dog = "Dog"

let mess = "先生，您订购了xxx的机票，需支付xxx元"

//集合类型   数组  set dictionary
let array : [Int]
array = [Int](repeating: 3, count: 10)

let array2 = Array(1...10)

var places = ["begning","shanghai"]
places.isEmpty
places.count
places.append("wuhan")

let haiwaiArray = ["NewYork"]
places += haiwaiArray

places.insert("Paris", at: 3)

//Set  //值无序不重复
let cardno : Set = [1,2,3,4]
cardno.count
cardno.isEmpty

let numberArray = cardno.sorted()
let citys : Set = ["shanghai","shiyan","changsha"]
let citysArray = citys.sorted()
type(of: citysArray)
type(of: citys)

let cars : Set = [5,6,4,8]
cardno.intersection(cars) //交集
cardno.union(cars)
cardno.intersection(cars)
cardno.symmetricDifference(cars)  //补集
cardno.subtracting(cars)

let h : Set = [1,2,3]
let i : Set = [3,2,1]

h == i
h.isSubset(of: i)
h.isStrictSubset(of: i)  //绝对子集
h.isSuperset(of: i)
h.isStrictSuperset(of: i)

h.isDisjoint(with: i) //是否完全没有交集

let astring  = "one to three"
let indexStartofText = astring.index(astring.startIndex, offsetBy: 3)
let substring1 = astring[indexStartofText...]


//字典
var airports = ["PVG":"Shanghai Pudong","CHU":"Dalian","DUB":"Dublin AirPort"]
var emptyDict: [String: String] = [:]


var interestingNumbers = ["primes": [2,3,5,7,5,11,16,13],"triangular": [1,3,6,10,15,21,28],"hexagonal": [1,6,15,28,91,66]];
for key in interestingNumbers.keys {
    interestingNumbers[key]?.sort(by: >)
}
print(interestingNumbers)
var emptydicts :Dictionary<String,String>

airports.count
airports.isEmpty
airports["SHQ"] = "Hongqiao airport"
airports["DUB"]

for (key, value) in airports {
    print(key,value)
}

let codes = [String](airports.keys)

//控制流
var sum = 0
for i in 1...100{
    sum += i
}
sum

for _ in 1...10 {
    print(100)
}

var ii = 1
var summ = 0
while ii <= 100 {
    summ += ii
    ii += 1
}

sum
i


struct Ticket{
    var movieName:String
    var TimeValid:Bool = true
}

func greet(person: [String: String]) {
    guard let name  = person["name"] else{
        return
    }
    
    print("Hello \(name)!")
    
    guard let location = person["location"] else {
        print ("I hope the weather is nice near you.")
        return
    }
    
    print("I hope the weather is nice in \(location).")
}

greet(person: ["name":"John"])
greet(person: ["name":"Jane","location":"Cupertino"])


/*
 switch
 */
var temp = 30
switch temp {
case 35...40:
    print("天气很好")
case 25...30:
    print("good")
default:
    print("室温已经超过了本空调的控制范围")
}

//元组匹配

//函数
func add(a:Int, b:Int) -> Int {
    return a + b
}


//闭包  没有名称的函数
var city = ["nanchang","hefei","wuhan","shiyan"]

var cityRank1 = city.sorted()

func daoxu(a:String,b:String) -> Bool {
    return a > b
}

var cityRank2 = city.sorted(by: daoxu)
var cityRank3 = city.sorted { (a, b) -> Bool in
    return a > b
}

var cityRank4 = city.sorted { (a, b) in
     a > b
}
var cityRank5 = city.sorted { $0 > $1 }
cityRank5.count



 



//: This line will have **bold** and *italic* text.

/*:
 ## Headers of All Sizes
 
 ### Lists of Links
 
 - [NSHipster](http://nshipster.com)
 - [ASCIIwwdc](http://asciiwwdc.com)
 - [SwiftDoc](http://swiftdoc.org)
 */

//枚举
enum Weather{
    case sunny
    case cloudy
    case rainy
    case snow
    case froggy
}
Weather.snow

var todayweather = Weather.froggy
switch todayweather {
case .cloudy:
    print("今天天气多云")
default:
    print("雾霾")
}















