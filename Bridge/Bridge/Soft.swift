//
//  Soft.swift
//  Bridge
//
//  Created by 张闯 on 2018/10/30.
//  Copyright © 2018 Rotai. All rights reserved.
//

import Foundation


class Soft: NSObject {
    
    func run() -> Void {
        
    }
    
}


class Wechat: Soft {
    
    override func run() {
        print("运行Wechat")
    }
    
}

class QQ: Soft {
    
    override func run() {
        print("运行QQ")
    }
    
}


class ICloud: Soft {
    
    override func run() {
        print("运行iCloud")
    }
    
}
