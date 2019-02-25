//
//  CRLocation.swift
//  counter-reading
//
//  Created by Christoph Lemke on 21.02.19.
//  Copyright © 2019 Christoph Lemke. All rights reserved.
//

import Foundation

public class CRLocation : CRIBaseModel{
    
    // MARK: Properties
    var id: String
    let locationName: String
    let locationPLZ: Int64
    let locationStreet: String
    let locationStreetNumber: String
    let locationCounter: [CRBaseCounter]
    
    // MARK: Initialization
    init(id: String, locationName: String, locationPLZ: Int64, locationStreet: String, locationStreetNumber: String, locationCounter: [CRBaseCounter]) {
        self.id = id
        self.locationName = locationName
        self.locationPLZ = locationPLZ
        self.locationStreet = locationStreet
        self.locationStreetNumber = locationStreetNumber
        self.locationCounter = locationCounter
    }
    
    
}
