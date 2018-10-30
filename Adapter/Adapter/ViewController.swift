//
//  ViewController.swift
//  Adapter
//
//  Created by 张闯 on 2018/10/26.
//  Copyright © 2018 Rotai. All rights reserved.
//

import UIKit

//场景1:一个稳定的类迁移到这里,其接口与现在的数据不匹配,不改变该类接口的情况下适配它.
//场景2:复用一个类,该类能够跟其他可能带有不兼容接口的类合作
//场景3:需要适配一个类的几个不同子类,每一个子类去子类化一个适配器不现实.这时采用对象适配器(delegate, tableView 多个类型的 cell)


class ViewController: UIViewController {

    @IBOutlet weak var oldView: OldView!
    @IBOutlet weak var newView: NewView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        let modelAdaptor = CommonAdapter()
        modelAdaptor.initData(loadNewModel())
        oldView.loadData(modelAdaptor)
        //oldView.oldMethod()
        
        //对象适配,需要初始化一个新类
        let viewAdapter = ViewAdapter.init(oldView)
        viewAdapter.request()
        
        
        modelAdaptor.initData(loadOldModel())
        //类适配
        newView.loadData(modelAdaptor)
        newView.request()
        
    }
    
    func loadOldModel() -> OldModel {
        
        //之前与 view 匹配的 model
        let oldModel = OldModel()
        oldModel.name = "张闯"
        oldModel.phone = "17317319882"
        oldModel.address = "辽宁沈阳市"
        
        return oldModel
    }
    
    
    func loadNewModel() -> NewModel {
        
        //与 view 属性不匹配的新 model
        let newModel = NewModel()
        newModel.new_name = "张闯闯"
        newModel.new_phone = "17349702595"
        newModel.new_address = "上海市青浦区"
        
        return newModel
    }


}

