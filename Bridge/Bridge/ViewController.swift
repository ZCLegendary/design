//
//  ViewController.swift
//  Bridge
//
//  Created by 张闯 on 2018/10/30.
//  Copyright © 2018 Rotai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //桥接模式
        //将实现跟抽象部分分离开.
        //抽象跟实现都可以通过子类化独立进行扩展
        //对抽象的实现进行修改不影响客户端代码
        
        
        //例子一: 三星手机,苹果手机 运行微信, QQ 软件, 苹果手机有 iCloud
        
        let samsung = Samsung.init(Wechat())
        samsung.installWechat()
        
        samsung.softWare = QQ()
        samsung.installQQ()
        
        let iPhone = Iphone.init(Wechat())
        iPhone.installWechat()
        
        iPhone.softWare = QQ()
        iPhone.installQQ()
        
        iPhone.softWare = ICloud()
        iPhone.installICloud()
        
        
        //例子二: RT8600/RT7800/RT7709 按摩椅 分别组装手控器, RT8600有3d程序, RT7800只有自动程序, RT7709有特殊程序,3d 程序
        print("\n\n")
        let rt8600 = RT8600Chair(RT8600Controll())
        rt8600.runAuto()
        rt8600.run3D()
        
        let rt7800 = RT7800Chair(RT7800Controll())
        rt7800.runAuto()
        
        let rt7709 = RT7709Chair(RT7709Controll())
        rt7709.runAuto()
        rt7709.run3D()
        rt7709.runSpecial()
        
        
    }


}

