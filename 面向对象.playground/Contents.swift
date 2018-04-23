//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

class 角色 {
    var id = ""
    var money = 0
}

let xiaobo = 角色()
xiaobo.id = "小波"
xiaobo.money = 5000

class 经验 {
    var 总经验 = 0 {
        willSet {
            print("当前总经验是：\(newValue)!")
        }
        didSet {
            print("增加了\(总经验 - oldValue)")
        }
    }
}

var 经验1 = 经验()
经验1.总经验 = 1000

//类型属性：类属性 类方法
class 生命体 {
    class var 遗传方式: String {
        return "RNA"
    }
}

生命体.遗传方式
class Human: 生命体 {
    override class var 遗传方式: String {
        return "DNA"
    }
}

print(Human.遗传方式)

enum Monster : Int {
    case sheep = 10,
    cat = 50,
    snake = 100
}

struct ExpTimes {
    var open = false
    var time = 1
}

class RmbPlayer {
    var exp = 0
    var expTimes = ExpTimes()
    
    func idle() {
        exp += 500
        print("挂机成功1次！总经验为\(exp)")
    }
    
    func kill(monster: Monster,expTimes: Int) {
        exp += (monster.rawValue * expTimes)
        print("monster.rawValue \(monster.rawValue) 当前总经验为\(exp)")
    }
}

var xiaoboo = RmbPlayer()
xiaoboo.idle()
xiaoboo.kill(monster: Monster.cat, expTimes: 2)

//类方法
class Player {
    static var nick = "xiaoboo"
    class func server() {
        print("\(nick),您在北京联通1区")
    }
}

Player.server()

class ShanghaiPlayer :Player {
    override static func server(){
        print(nick,"您在上海电信2区")
    }
}

ShanghaiPlayer.server()

//下标
var dict = [1:"1",2:"xiaobo"]
var dict1 = [1:"2"]
dict[1]


struct subexample {
    let decrementer: Int
    subscript(index: Int) -> Int {
        return decrementer / index
    }
}
let division = subexample(decrementer: 100)

division[9]

pow(1, 2)
var b = pow(3 , 5)  //3.2的5次方

var c = sqrt(3.2) //平方根
let cc = 3.25
let ccc = Double.pi

struct Cycle {
    func area(radius: Double) -> Double {
        return Double.pi * pow(radius, 2)
    }
    subscript(radius: Double) -> Double {
        return Double.pi * pow(radius, 2)
    }
}
let cycle = Cycle()
cycle.area(radius: 3)
cycle[3]



