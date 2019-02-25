//
//  CRElectroCounter.swift
//  counter-reading
//
//  Created by Christoph Lemke on 25.02.19.
//  Copyright © 2019 Christoph Lemke. All rights reserved.
//

import UIKit

public class CRElectroCounter : CRBaseCounter{
    // MARK: Properties
    let counterElectro: Float
    
    // MARK: Initialization
    init(counterid: String, countername: String, counterStartValue: Float, counterCat: CRCounterCategory, counterLimitValue: Float, counterElectro: Float) {
        self.counterElectro = counterElectro
        super.init(counterid: counterid, countername: countername, counterStartValue: counterStartValue, counterCat: counterCat, counterLimitValue: counterLimitValue)
    }
}
