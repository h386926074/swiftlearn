//
//  ViewController.swift
//  swiftlearn
//
//  Created by apple on 2016/9/20.
//  Copyright © 2016年 com.qichuwang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        demo02()
        
        demoblock()
        
        demo03()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    func demo02() {
        let usernames = ["Lves","wildcat","Cc","Lecoding","Cd"]
        
        let resultname = usernames.sorted(by:{s1,s2 in
            return s1<s2
        })
        
        print(resultname)
    }
    
    
    
    func demoblock() {
        let usernames = ["Lves","wildcat","Cc","Lecoding","Cd"]
//        var resultName1 = usernames.sorted(by: backWords(s1:s2:))
        let resultName1 = usernames.sorted()
        
        print(resultName1)
    }

    
    func backWords(s1:String,s2:String) -> Bool {
        return s1>s2
    }
    
    func demo03()  {
        var myVariable = 42
        myVariable = 50
        let myConstant = 42
        print(myVariable,myConstant)
        
        
        let explicitDouble:Double = 70
        let label = "The width is"
        let widthLabel = label+" "+String(explicitDouble)
        print(widthLabel)
        
        let fruitSummary = "I have \(myVariable) pieces of fruit"
        print(fruitSummary)
        
        
        var shoppingList = ["catfish","water","tulips","blue paint"]
        shoppingList[1] = "bottle of water"
        
        var occupations = [
            "Malcolm": "Captain",
               "Kaylee":"Mechanic",
        ]
        
        occupations["Jayne"] = "Public Relations"
        print(shoppingList,occupations)
        
        var emptyArray = [String]()
        _ = [String:Float]()
        emptyArray.append("one")
        print(emptyArray)
        
        for str in emptyArray {
            if str == "one" {
                print(str+"相等")
            }
            
            if str < "ones" {
                print(str+"< ones")
            }
            
            if str.hasPrefix("on") {
                print(str+" hasprefix (on)")
            }
            
            if str.contains("n") {
                print(str+" contains (n)")
            }
            
            if str.hasSuffix("ne") {
                print(str+" 以 (ne)结尾")
            }
        }
        
        
        var optionalString:String? = "hello"
        print(optionalString == nil)
        
        var optionName:String? = "John Appleseed"
        var greeting = "hello!"
        if let name = optionName {
            greeting = "Hello, \(name)"
        }
        
        
    }
    
}

