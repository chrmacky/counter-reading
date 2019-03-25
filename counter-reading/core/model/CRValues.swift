//
//  CRValues.swift
//  counter-reading
//
//  Created by Christoph Lemke on 14.03.19.
//  Copyright © 2019 Christoph Lemke. All rights reserved.
//

import Foundation

public class CRValues {
    
    // MARK: Properties
    let valueId: String
    let valueDate: String
    let valueCount: Float   // presents the current value of a couter meter reading
    
    // MARK: Initialization
    init(valId: String, valDate: String, valCount: Float){
        self.valueId = valId
        self.valueDate = valDate
        self.valueCount = valCount
    }
}
