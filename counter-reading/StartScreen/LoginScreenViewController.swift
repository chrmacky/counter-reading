//
//  LoginScreenViewController.swift
//  counter-reading
//
//  Created by Christoph Lemke on 05.03.19.
//  Copyright © 2019 Christoph Lemke. All rights reserved.
//

import Foundation

import UIKit

class LoginScreenViewController: UIViewController {
    
    @IBOutlet weak private var userNameField: UITextField!
    @IBOutlet weak private var userPasswordField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        drawTextField()
    }
    
    
    func drawTextField(){
        // UserName TextField
//        userNameField.layer.cornerRadius = userNameField.frame.size.height/2
//        
//        userNameField.clipsToBounds = true
//        // Password TextField
//        userPasswordField.layer.cornerRadius = userPasswordField.frame.size.height/2
//        
//        userPasswordField.clipsToBounds = true
    }
    
}
