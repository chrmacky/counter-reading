//
//  CRBaseCounter.swift
//  counter-reading
//
//  Created by Christoph Lemke on 17.02.19.
//  Copyright © 2019 Christoph Lemke. All rights reserved.
//

import UIKit

/// Base class of all counter reader, all of which must have the same values.
public class CRBaseCounter: CRBaseModel{
    
    // MARK: Properties
    let counterId: String                   // presents the counter unique id
    let counterName: String                 // presents the name of the counter
    let counterStartValue: Float            // the counter reader start value at takeover
    let counterCat: CRCounterCategoryEnum   // the categorie of the counter reader
    let counterLimitValue: Float            // the limit value from the counter reader, it can been modified
    let counterUnit: CRUnitStateEnum        // presents the unit of an counter reader
    let counterValues: [CRValues]
       
    // MARK: Initialization
    init(id: String, counterid: String, countername: String, counterStartValue: Float, counterCat: CRCounterCategoryEnum, counterLimitValue: Float, counterUnit: CRUnitStateEnum, counterValues: [CRValues]) {
        self.counterId = counterid
        self.counterName = countername
        self.counterStartValue = counterStartValue
        self.counterCat = counterCat
        self.counterLimitValue = counterLimitValue
        self.counterUnit = counterUnit
        self.counterValues = counterValues
        super.init(id: id)
    }
}

