//
//  CRCounter.swift
//  counter-reading
//
//  Created by Christoph Lemke on 15.02.19.
//  Copyright © 2019 Christoph Lemke. All rights reserved.
//

import UIKit

public class CRCounter{
    let counterId: Int64
    let counterName: String
    
    init(counterid: Int64, countername: String) {
        self.counterId = counterid
        self.counterName = countername
    }
}
