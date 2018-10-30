//
//  Controll.swift
//  Bridge
//
//  Created by 张闯 on 2018/10/30.
//  Copyright © 2018 Rotai. All rights reserved.
//

import Foundation

class Controll: NSObject {
    
    func selectProgram(_ name: String) -> Void {
        
    }
    
}


class RT8600Controll: Controll {
    
    override func selectProgram(_ name: String) {
        print("运行 RT8600 \(name) 程序")
    }
    
}

class RT7800Controll: Controll {
    
    override func selectProgram(_ name: String) {
        print("运行 RT7800 \(name) 程序")
    }
    
}

class RT7709Controll: Controll {
    
    override func selectProgram(_ name: String) {
        print("运行 RT7709 \(name) 程序")
    }
    
}
