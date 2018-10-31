//
//  Employee.swift
//  Facade
//
//  Created by 张闯 on 2018/10/31.
//  Copyright © 2018 Rotai. All rights reserved.
//

import Foundation

class Assistant {
    
    func reserveTicket() -> Void {
        print("助理订机票")
    }
    
    func reserveHotel() -> Void {
        print("助理订酒店")
    }
    
    func planTour() -> Void {
        print("安排行程")
    }
    
    func prepareFiles() -> Void {
        print("准备资料")
    }
    
    
}


class Driver {
    
    func drive() -> Void {
        print("司机开车")
    }
    
}

class Business {
    
    func metting() -> Void {
        print("商务会见客户")
    }
    
}
