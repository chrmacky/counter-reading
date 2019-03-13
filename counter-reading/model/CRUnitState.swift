//
//  CRUnitState.swift
//  counter-reading
//
//  Created by Christoph Lemke on 14.03.19.
//  Copyright © 2019 Christoph Lemke. All rights reserved.
//

import Foundation
/// is used to describe the different units of a meter reading
// TODO: must be translate for device speech
enum CRUnitState: String {
    case Kilowatt = "kWh"
    case qubikmeter = "qm"
}
