//
//  Adapter.swift
//  Adapter
//
//  Created by 张闯 on 2018/10/26.
//  Copyright © 2018 Rotai. All rights reserved.
//

import Foundation

protocol AdapterProtocol {
    func name() -> String
    func address() -> String
    func phone() -> String
}


class BaseAdapter: AdapterProtocol {
    
    var data: AnyObject?
    
    func initData(_ data: AnyObject) -> Void {
        self.data = data
    }
    
    
    func name() -> String {
        return ""
    }
    
    func address() -> String {
        return ""
    }
    
    func phone() -> String {
        return ""
    }
    
}


class CommonAdapter: BaseAdapter {
    
    override func name() -> String {
        
        var name: String!
        
        if (data?.isMember(of: OldModel.self))! {
            
            let oldModel = data as! OldModel
            name = oldModel.name
            
        } else if (data?.isMember(of: NewModel.self))! {
            
            let newModel = data as! NewModel
            name = newModel.new_name
            
        }
        
        return name
        
    }
    
    override func address() -> String {
        
        var address: String!
        
        if (data?.isMember(of: OldModel.self))! {
            
            let oldModel = data as! OldModel
            address = oldModel.address
            
        } else if (data?.isMember(of: NewModel.self))! {
            
            let newModel = data as! NewModel
            address = newModel.new_address
            
        }
        
        return address

    }
    
    
    override func phone() -> String {
        
        var phone: String!
        
        if (data?.isMember(of: OldModel.self))! {
            
            let oldModel = data as! OldModel
            phone = oldModel.phone
            
        } else if (data?.isMember(of: NewModel.self))! {
            
            let newModel = data as! NewModel
            phone = newModel.new_phone
            
        }
        
        return phone
        
    }
    
    
}
