//
//  CRUser.swift
//  counter-reading
//
//  Created by Christoph Lemke on 15.02.19.
//  Copyright © 2019 Christoph Lemke. All rights reserved.
//

import UIKit

/// the class represent the user with all attributes
/// firebase initialize the user with uuid from email and password
public class CRUser {
    
    // MARK: Properties
    public let userUid: String // uuid from firebase
    public let userName: String
    public let userEmail: String
    
    // MARK: Initialization
    init(username: String, userid: String, useremail: String) {
        self.userName = username
        self.userUid = userid
        self.userEmail = useremail
    }
    
    
}
