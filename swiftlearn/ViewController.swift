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
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func demo02() {
        var usernames = ["Lves","wildcat","Cc","Lecoding","Cd"]
        
        var resultname = usernames.sorted(by:{s1,s2 in
            return s1<s2
        })
        
        print(resultname)
    }
    
    
    
    func demoblock() {
        var usernames = ["Lves","wildcat","Cc","Lecoding","Cd"]
//        var resultName1 = usernames.sorted(by: backWords(s1:s2:))
        var resultName1 = usernames.sorted()
        
        print(resultName1)
    }

    

    func backWords(s1:String,s2:String) -> Bool {
        return s1>s2
    }
    
}

