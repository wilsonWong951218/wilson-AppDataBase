//
//  SecondViewController.swift
//  HelloEmbedInTabBar
//
//  Created by Macintosh on 2018/3/9.
//  Copyright © 2018年 appsgaga. All rights reserved.
//
import UIKit

class SecondViewController: UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(userName)
        view.addSubview(passWord)
        view.addSubview(UserImage)
        view.addSubview(passWordImage)
        view.addSubview(LoginButton)
        view.addSubview(SignupButton)
        view.addSubview(warningLabel)
        SignupButton.layer.cornerRadius = 5.0
        LoginButton.layer.cornerRadius = 5.0
        SignupButton.layer.masksToBounds = true
        LoginButton.layer.masksToBounds = true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        userName.resignFirstResponder()
        passWord.resignFirstResponder()
    }
    @IBAction func signUpButton(_ sender: UIButton) {
        let Username = userName.text
        let Password = passWord.text
        passWord.text! = ""
        userName.text! = ""
        let urlData = "https://homeunicorn.000webhostapp.com/wwsignup.php"
        //        modeldata.dataBase(user: Username!, pass: Password!, url: urlData)
        let request = NSMutableURLRequest(url: NSURL(string: urlData)! as URL)
        request.httpMethod = "POST"
        
        let postString = "name=\(String(describing: Username))&password=\(String(describing: Password))"
        request.httpBody = postString.data(using: String.Encoding.utf8)
        
        let task = URLSession.shared.dataTask(with: request as URLRequest) {
            data, response, error in
            
            if error != nil {
                print("error=\(error)")
                return
            }
            
            print("response = \(response)")
            
            let responseString = NSString(data: data!, encoding: String.Encoding.utf8.rawValue)
            print("responseString = \(responseString!)")
            print("bbb")
            DispatchQueue.main.async { // Correct
                let dataSave = responseString! as String
                if dataSave == "true"{
                    self.warningLabel.text = "SignUp Succese"
                }else{
                    self.warningLabel.text = "SignUp fail"
                }
            }
        }
        task.resume()
    }
    @IBAction func loginButton(_ sender: UIButton) {
        let Username = userName.text
        let Password = passWord.text
        passWord.text! = ""
        userName.text! = ""
        let urlData = "https://homeunicorn.000webhostapp.com/wwlogin.php"
        let request = NSMutableURLRequest(url: NSURL(string: urlData)! as URL)
        request.httpMethod = "POST"
        
        let postString = "name=\(String(describing: Username))&password=\(String(describing: Password))"
        request.httpBody = postString.data(using: String.Encoding.utf8)
        print("one")
        
        
        
        let task = URLSession.shared.dataTask(with: request as URLRequest) {
            data, response, error in
            
            if error != nil {
                print("error=\(error)")
                return
            }
            
            print("response = \(response)")
            
            let responseString = NSString(data: data!, encoding: String.Encoding.utf8.rawValue)
            print("responseString = \(responseString!)")
            print("bbb")
            DispatchQueue.main.async { // Correct
                let dataSave = responseString! as String
                if dataSave == "true"{
                    self.warningLabel.text = "LogIn Succese"
                    self.performSegue(withIdentifier: "gotoLoginPage", sender: nil)
                }else{
                    self.warningLabel.text = "LogIn fail"
                }
            }
        }
        task.resume()
    }
    @IBOutlet weak var warningLabel: UILabel!
    @IBOutlet weak var UserImage: UIImageView!
    @IBOutlet weak var passWordImage: UIImageView!
    
    @IBOutlet weak var LoginButton: UIButton!
    @IBOutlet weak var SignupButton: UIButton!
    @IBOutlet weak var passWord: UITextField!
    @IBOutlet weak var userName: UITextField!
}

