//
//  OldView.swift
//  Adapter
//
//  Created by 张闯 on 2018/10/26.
//  Copyright © 2018 Rotai. All rights reserved.
//

import UIKit

class OldView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    //加载 AdapterProtocol data
    func loadData(_ data: AdapterProtocol) -> Void {
        nameLabel.text = data.name()
        addressLabel.text = data.address()
        phoneLabel.text = data.phone()
    }
    
    func oldMethod() -> Void {
        print("老方法")
    }
    
    
    lazy var nameLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 10, y: 10, width: 80, height: 20))
        label.text = "名字"
        addSubview(label)
        return label
    }()
    
    lazy var addressLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 10, y: 40, width: 150, height: 20))
        label.text = "地址"
        addSubview(label)
        return label
    }()
    
    lazy var phoneLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 10, y: 70, width: 180, height: 20))
        label.text = "电话"
        addSubview(label)
        return label
    }()
    
}




protocol ViewMethodProtocol {
    func request() -> Void
}

//类适配器
//1.只针对单一具体的被适配(Adaptee)的类
//2.易于重载被适配(Adaptee)的行为
//3.只有一个 Adapter 对象(NewView)
class NewView: OldView, ViewMethodProtocol {
    
    func request() {
        super.oldMethod()
    }
    
}

//对象适配器 (delegate是对象适配器)
//1.可以针对多个被适配(Adaptee)的类
//2.难以重载Adapter 的行为
//3.需要额外指针来间接访问被适配(Adaptee)(在 vc 中又初始化了一个 ViewAdapter)

//点击 TableViewCell 中的按钮跳转到下一个页面
//在 cell 中声明 delegate 属性,在 action 里执行代理方法,最后在 vc 中执行
//显然 cell 中的 action 行为在 vc 中不适用,因此在要在 vc 中执行该 action 需要设置 cell 的代理为 vc(本例中 相当于 OldView 的代理为 ViewAdapter)
class ViewAdapter: ViewMethodProtocol {
    
    var oldView: OldView?
    //var otherView: OtherView?
    
    init(_ oldView: OldView) {
        self.oldView = oldView
    }
    
//    init(_ otherView: OldView) {
//        self.otherView = otherView
//    }
    
    func request() {
        oldView?.oldMethod()
        //otherView?.oldMethod()
    }
    
}
