//
//  Phone.swift
//  Bridge
//
//  Created by 张闯 on 2018/10/30.
//  Copyright © 2018 Rotai. All rights reserved.
//

import Foundation

enum ware {
    case wechat
    case qq
    case iCloud
}


class Phone {
    
    var softWare: Soft
    
    init(_ soft: Soft) {
        self.softWare = soft
    }
    
    func install() -> Void {
        self.softWare.run()
    }
    
}


class Samsung: Phone {
    
    func installWechat() -> Void {
        if softWare.isMember(of: Wechat.self) {
            print("三星手机")
            super.install()
        } else {
            print("请安装正确的软件")
        }
    }
    
    func installQQ() -> Void {
        if softWare.isMember(of: QQ.self) {
            print("三星手机")
            super.install()
        } else {
            print("请安装正确的软件")
        }
    }
    
}

class Iphone: Phone {
    
    func installWechat() -> Void {
        if softWare.isMember(of: Wechat.self) {
            print("苹果手机")
            super.install()
        } else {
            print("请安装正确的软件")
        }
    }
    
    func installQQ() -> Void {
        if softWare.isMember(of: QQ.self) {
            print("苹果手机")
            super.install()
        } else {
            print("请安装正确的软件")
        }
    }
    
    func installICloud() -> Void {
        if softWare.isMember(of: ICloud.self) {
            print("苹果手机")
            super.install()
        } else {
            print("请安装正确的软件")
        }
    }
    
}
