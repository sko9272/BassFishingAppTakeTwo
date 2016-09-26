//
//  ConnectionSettings.swift
//  BassFishingAppTakeTwo
//
//  Created by apcsp on 9/22/16.
//  Copyright © 2016 apcsp. All rights reserved.
//

import UIKit

//class ConnectionSettings: UIViewController {
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        // Do any additional setup after loading the view.
//    }
//}
public struct ConnectionSettings {
    
    static var clientId = "yA0ac1klHaXYDJ5HPHN4sVVxpX1Vem1A"
    static var clientSecret = "zJA8WNmmxe4UXR0G"
    static var apiBaseUrl = "http://developerdave-test.apigee.net"
    
    public static func apiURLWithPathComponents(components: String) -> NSURL {
        let baseUrl = NSURL(string: ConnectionSettings.apiBaseUrl)
        let APIUrl = NSURL(string: components, relativeToURL: baseUrl)
        
        return APIUrl!
    }
}