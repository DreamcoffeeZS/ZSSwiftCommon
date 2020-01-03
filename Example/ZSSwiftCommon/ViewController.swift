//
//  ViewController.swift
//  ZSSwiftCommon
//
//  Created by DreamcoffeeZS on 01/02/2020.
//  Copyright (c) 2020 DreamcoffeeZS. All rights reserved.
//

import UIKit
import ZSSwiftCommon

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let view = UIView(frame: CGRect.zero)
        view.backgroundColor = ZSColor7C63C4
        self.view.addSubview(view)
        
        view.width = 200
        view.height = 200
        view.centerX = kDeviceWidth / 2
        view.centerY = kDeviceHeight / 2

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

