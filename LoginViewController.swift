//
//  LoginViewController.swift
//  BassFishingAppTakeTwo
//
//  Created by apcsp on 9/21/16.
//  Copyright © 2016 apcsp. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad()
    {
        super.viewDidLoad()

    }

    @IBAction func loginButton(sender: UIButton)
    {
        var username = self.loginTextField.text
        var password = self.passwordTextField.text
        LoginService.sharedInstance.loginWithCompletionHandler(username!, password: password!) { (error) -> Void in
            
            if ((error) != nil) {
                
                dispatch_async(dispatch_get_main_queue(), { () -> Void in
                    var alert = UIAlertController(title: "Why are you doing this to me?!?", message: error, preferredStyle: .Alert)
                    alert.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.Default, handler: nil))
                    self.presentViewController(alert, animated: true, completion: nil)
                })
                
            }
            else
            {
                
                dispatch_async(dispatch_get_main_queue(), { () -> Void in
                    let controllerId = LoginService.sharedInstance.isLoggedIn() ? "Welcome" : "Login";
                    
                    let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
                    let initViewController: UIViewController = storyboard.instantiateViewControllerWithIdentifier(controllerId) as UIViewController
                    self.presentViewController(initViewController, animated: true, completion: nil)
                })
            }
        }
    }
    }
  

