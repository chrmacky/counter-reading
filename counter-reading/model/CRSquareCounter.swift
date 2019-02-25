//
//  CRSquareCounter.swift
//  counter-reading
//
//  Created by Christoph Lemke on 25.02.19.
//  Copyright © 2019 Christoph Lemke. All rights reserved.
//

import UIKit

public class CRSquareCounter : CRBaseCounter{
    // MARK: Properties
    let counterSquare: Float
    
    // MARK: Initialization
    init(counterid: String, countername: String, counterStartValue: Float, counterCat: CRCounterCategory, counterLimitValue: Float, counterSquare: Float) {
        self.counterSquare = counterSquare
        super.init(counterid: counterid, countername: countername, counterStartValue: counterStartValue, counterCat: counterCat, counterLimitValue: counterLimitValue)
    }
}
