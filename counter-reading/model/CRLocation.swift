//
//  CRLocation.swift
//  counter-reading
//
//  Created by Christoph Lemke on 21.02.19.
//  Copyright © 2019 Christoph Lemke. All rights reserved.
//

import Foundation

// TODO: based of an interface/ protocol
public class CRLocation{
    
    // MARK: Properties
    var locationId: String
    let locationName: String
    let locationPLZ: Int
    let locationStreet: String
    let locationStreetNumber: String
    let locationUser: [CRUser]
    
    // MARK: Initialization
    init(locId: String, locName: String, locPLZ: Int, locStreet: String, locStreetNumber: String, locUser: [CRUser]) {
        self.locationId = locId
        self.locationName = locName
        self.locationPLZ = locPLZ
        self.locationStreet = locStreet
        self.locationStreetNumber = locStreetNumber
        self.locationUser = locUser
    }
    
    
}
