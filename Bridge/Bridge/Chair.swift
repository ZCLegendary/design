//
//  Chair.swift
//  Bridge
//
//  Created by 张闯 on 2018/10/30.
//  Copyright © 2018 Rotai. All rights reserved.
//

import Foundation


class Chair {
    
    var controll: Controll
    
    init(_ controll: Controll) {
        self.controll = controll
    }
    
    func installProgram(_ name: String) -> Void {
        
        self.controll.selectProgram(name)
    }
    
    
}

class RT8600Chair: Chair {
    
    func runAuto() -> Void {
        if !controll.isMember(of: RT8600Controll.self) { print("请选择正确规格的手控器"); return }
        super.installProgram("自动")
    }
    
    func run3D() -> Void {
        if !controll.isMember(of: RT8600Controll.self) { print("请选择正确规格的手控器"); return }
        super.installProgram("3D")
    }
    
}

class RT7800Chair: Chair {
    
    func runAuto() -> Void {
        if !controll.isMember(of: RT7800Controll.self) { print("请选择正确规格的手控器"); return }
        super.installProgram("自动")
    }
    
}

class RT7709Chair: Chair {
    
    func runAuto() -> Void {
        if !controll.isMember(of: RT7709Controll.self) { print("请选择正确规格的手控器"); return }
        super.installProgram(" 自动")
    }
    
    func run3D() -> Void {
        if !controll.isMember(of: RT7709Controll.self) { print("请选择正确规格的手控器"); return }
        super.installProgram("3D")
    }
    
    func runSpecial() -> Void {
        if !controll.isMember(of: RT7709Controll.self) { print("请选择正确规格的手控器"); return }
        super.installProgram("特殊")
    }
    
}
