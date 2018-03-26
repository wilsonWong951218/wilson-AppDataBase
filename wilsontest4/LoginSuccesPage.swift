//
//  LoginInSucessePage.swift
//  wilsontest4
//
//  Created by Macintosh on 2018/3/22.
//  Copyright © 2018年 appsgaga. All rights reserved.
//

import UIKit

class LoginSuccesPage:UIViewController{
    override func viewDidLoad() {
       
    }
    @IBAction func backToSignUpPage(_ sender: UIButton) {
        self.performSegue(withIdentifier: "backtoSignUpPage", sender: nil)
    }
    @IBOutlet weak var backToSignUpPage: UIButton!
   
}
