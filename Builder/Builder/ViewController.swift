//
//  ViewController.swift
//  Builder
//
//  Created by 张闯 on 2018/10/26.
//  Copyright © 2018 Rotai. All rights reserved.
//

import UIKit

protocol Builder {
    func createBodyPart() -> Void  //制造机身
    func createMovePart() -> Void  //制造机芯
    func createLegPart() -> Void   //制造小腿
    func createControllPart() -> Void //制造手控器
}

class ChairDirector {
    
    var builder: Builder
    
    init(builder: Builder) {
        self.builder = builder
    }
    
    func build() -> Void {
        builder.createLegPart()
        builder.createBodyPart()
        builder.createMovePart()
        builder.createControllPart()
    }
    
}

class RT8610Builder: Builder {
    
    func createBodyPart() {
        print("制造RT8610机身")
    }
    
    func createMovePart() {
        print("制造RT8610机芯")
    }
    
    func createLegPart() {
        print("制造RT8610小腿")
    }
    
    func createControllPart() {
        print("制造RT8610手控器")
    }
}


class RT8900Builder: Builder {
    
    func createBodyPart() {
        print("制造RT8900机身")
    }
    
    func createMovePart() {
        print("制造RT8900机芯")
    }
    
    func createLegPart() {
        print("制造RT8900小腿")
    }
    
    func createControllPart() {
        print("制造RT8900手控器")
    }
}


class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //根据指令 制造8610按摩椅/8900按摩椅
        
        //按摩椅工厂
        //8900按摩椅
        //8610按摩椅
        //颜色 按摩程序 价格
        
        let rt8610Builder = RT8610Builder()
        var director = ChairDirector(builder: rt8610Builder)
        director.build()
        
        let rt8900Builder = RT8900Builder()
        director = ChairDirector(builder: rt8900Builder)
        director.build()
        
    }
    
}
