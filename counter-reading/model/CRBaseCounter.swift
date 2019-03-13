//
//  CRBaseCounter.swift
//  counter-reading
//
//  Created by Christoph Lemke on 17.02.19.
//  Copyright © 2019 Christoph Lemke. All rights reserved.
//

import UIKit

/// Base class of all counter reader, all of which must have the same values.
/// They all have the same proberties.
public class CRBaseCounter{
    
    // MARK: Properties
    let counterId: String               // presents the counter unique id
    let counterName: String             // presents the name of the counter
    let counterStartValue: Float        // the counter reader start value at takeover
    let counterCat: CRCounterCategory   // the categorie of the counter reader
    let counterLimitValue: Float        // the limit value from the counter reader, it can been modified
    let counterUnit: CRUnitState        // presents the unit of an counter reader
       
    // MARK: Initialization
    init(counterid: String, countername: String, counterStartValue: Float, counterCat: CRCounterCategory, counterLimitValue: Float, counterUnit: CRUnitState) {
        self.counterId = counterid
        self.counterName = countername
        self.counterStartValue = counterStartValue
        self.counterCat = counterCat
        self.counterLimitValue = counterLimitValue
        self.counterUnit = counterUnit
    }
}

