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
public class CRUser : CRBaseModel{
    
    // MARK: Properties
    public let userUid: String // uuid from firebase
    public let userName: String
    public let userEmail: String
    public let userLocation: [CRLocation]
    public let userCounter: [CRBaseCounter]
    
    // MARK: Initialization
    init(id: String, username: String, userid: String, useremail: String, userlocation: [CRLocation], usercounter: [CRBaseCounter]) {
        self.userName = username
        self.userUid = userid
        self.userEmail = useremail
        self.userLocation = userlocation
        self.userCounter = usercounter
        super.init(id: id)
    }
    
    
}
