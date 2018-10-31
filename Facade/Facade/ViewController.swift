//
//  ViewController.swift
//  Facade
//
//  Created by 张闯 on 2018/10/31.
//  Copyright © 2018 Rotai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //老板去国外出差,助理协助老板订机票,订酒店,安排行程,准备工作资料;司机负责送老板去机场;商务负责跟客户沟通;
        
        let boss = Boss()
        boss.go()
        
    }


}

