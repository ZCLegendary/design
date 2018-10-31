//
//  Boss.swift
//  Facade
//
//  Created by 张闯 on 2018/10/31.
//  Copyright © 2018 Rotai. All rights reserved.
//

import Foundation

class Boss {
    
    var assistant: Assistant!
    var driver: Driver!
    var business: Business!
    
    init() {
        assistant = Assistant()
        driver = Driver()
        business = Business()
    }
    
    
    func go() -> Void {
        
        assistant.reserveTicket()
        assistant.reserveHotel()
        assistant.prepareFiles()
        assistant.planTour()
        
        driver.drive()
        
        business.metting()
        
    }
    
    
}
