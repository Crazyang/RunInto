//
//  FirstViewController.swift
//  RunInto
//
//  Created by YongYang on 09/11/2016.
//  Copyright © 2016 YongYang. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    var abc = LocationManager();
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        abc.getAuthor();
        abc.checkLocation();
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

