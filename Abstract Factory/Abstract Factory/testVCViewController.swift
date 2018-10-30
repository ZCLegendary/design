//
//  testVCViewController.swift
//  Abstract Factory
//
//  Created by 张闯 on 2018/10/23.
//  Copyright © 2018 Rotai. All rights reserved.
//

import UIKit

class testVCViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("B viewDidLoad")
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("B viewWillAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("B viewWillDisappear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("B viewDidAppear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("B viewDidDisappear")
    }
    
    override func loadView() {
        print("B loadView")
        let view = UIView.init(frame: CGRect(x: 0, y: 0, width: 375, height: 660))
        view.backgroundColor = .red
        self.view = view
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
