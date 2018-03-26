//
//  ViewController.swift
//  HelloEmbedInTabBar
//
//  Created by appsgaga on 2016/3/22.
//  Copyright © 2016年 appsgaga. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        labelWelcomePage.text = "Travel Is My Life\n"
        labelWelcomePage.textColor = UIColor.black
        view.addSubview(labelWelcomePage)

       
    }

    @IBOutlet weak var welcomePageimage: UIImageView!
   
    
    @IBOutlet weak var labelWelcomePage: UILabel!
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

