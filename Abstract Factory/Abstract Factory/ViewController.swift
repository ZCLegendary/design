//
//  ViewController.swift
//  Abstract Factory
//
//  Created by 张闯 on 2018/10/23.
//  Copyright © 2018 Rotai. All rights reserved.
//

import UIKit

/*
 抽象工厂方法造纸术
 */


protocol Factory {
    func creatYellowPaper() -> Paper
    func creatWhitePaper() -> Paper
}

class PaperFactory: Factory {
    
    func creatYellowPaper() -> Paper {
        return YellowPaper()
    }
    
    func creatWhitePaper() -> Paper {
        return WhitePaper()
    }
}


protocol Paper {
    
    func displayPaper() -> Void
}

class YellowPaper: Paper {
    
    var color = ""
    var price = ""
    
    func displayPaper() {
        print("color: \(color)\nprice:\(price)")
    }

    init() {
        color = "黄色"
        price = "3元"
    }
    
}

class WhitePaper: Paper {
    
    var color = ""
    var price = ""
    
    func displayPaper() {
        print("color: \(color)\nprice:\(price)")
    }
    
    init() {
        color = "白色"
        price = "1元"
    }
    
}



class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
       
        let factory = PaperFactory.init()
        
        let yellow = factory.creatYellowPaper()
        yellow.displayPaper()
        
        let white = factory.creatWhitePaper()
        white.displayPaper()
        
        
    }
    
    
}

