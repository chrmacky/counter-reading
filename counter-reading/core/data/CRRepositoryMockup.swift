//
//  CRRepositoryMockup.swift
//  counter-reading
//
//  Created by Christoph Lemke on 17.03.19.
//  Copyright © 2019 Christoph Lemke. All rights reserved.
//

import Foundation

public class CRRepositoryMockup{
    // for singelton used only
    public static let shareRepositoryMockup = CRRepositoryMockup()
    private init(){}
    
    private let mockUpData = CRData_Mockup()
    
    /// Callback for the the sync asset call
    private var callback:()->() = {
        print("Callback not set")
    }
    
    public func loadDataFromMockup(callback: @escaping ([CRBaseCounter]) -> ()){
        callback(mockUpData.counterList)
    }
}
