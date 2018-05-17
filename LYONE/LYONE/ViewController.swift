//
//  ViewController.swift
//  LYONE
//
//  Created by zhangyunan on 2018/5/16.
//  Copyright © 2018年 coding. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor.init(red: CGFloat(drand48()), green:  CGFloat(drand48()), blue:  CGFloat(drand48()), alpha: 1.0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

