//
//  WelcomeViewController.swift
//  BassFishingAppTakeTwo
//
//  Created by apcsp on 9/23/16.
//  Copyright © 2016 apcsp. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController
{

//    override func viewDidLoad()
//    {
//        super.viewDidLoad()
//
//        
//    }
    
           
        
        override func viewDidLoad()
        {
            super.viewDidLoad()
        }
    @IBAction func signOut(sender: UIButton)
    {
            LoginService.sharedInstance.signOut()
            
            let controllerId = LoginService.sharedInstance.isLoggedIn() ? "Welcome" : "Login";
            let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let initViewController: UIViewController = storyboard.instantiateViewControllerWithIdentifier(controllerId) as UIViewController
            self.presentViewController(initViewController, animated: true, completion: nil)
    }
    
}
