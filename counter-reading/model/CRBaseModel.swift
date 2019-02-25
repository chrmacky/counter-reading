//
//  CRBaseModel.swift
//  counter-reading
//
//  Created by Christoph Lemke on 21.02.19.
//  Copyright © 2019 Christoph Lemke. All rights reserved.
//

import Foundation

public class CRBaseModel : CRIBaseModel{
    
    //MARK: Properties
    public let id : String
    
    // MARK: Initialization
    init(id: String){
        self.id = id
    }
}
