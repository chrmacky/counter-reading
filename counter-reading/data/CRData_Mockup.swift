//
//  CRData_Mockup.swift
//  counter-reading
//
//  Created by Christoph Lemke on 20.02.19.
//  Copyright © 2019 Christoph Lemke. All rights reserved.
//

import Foundation

class CRData_Mockup {

    // MARK: Properties
    var userList = [CRUser]()
    var counterList = [CRBaseCounter]()
    var locationList = [CRLocation]()
    
    init(userList: [CRUser], counterList: [CRBaseCounter]){
        self.userList = userList
        self.counterList = counterList
        loadMockData()
    }
    
    private func loadMockData(){
        let counterWater1 = CRBaseCounter(counterid: "counterID1", countername: "kalt Wasserzähler 1", counterStartValue: 0.0, counterCat: CRCounterCategory(rawValue: CRCounterCategory.Strom.rawValue)!, counterLimitValue: 34.93, counterUnit: CRUnitState(rawValue: CRUnitState.Kilowatt.rawValue)!)
        let counterElectro = CRBaseCounter(counterid: CRCounterCategory.Strom.rawValue, countername: "Stromzähler", counterStartValue: 12.08, counterCat: .Strom, counterLimitValue: 1234.98, counterElectro: 0.0)
        
        let altenholz = CRLocation(id: "alten1", locationName: "Altenholz", locationPLZ: 66666, locationStreet: "StarssenName", locationStreetNumber: "23", locationCounter: [counterWater1])
        let hamburg = CRLocation(id: "hh2", locationName: "hamburg", locationPLZ: 26151, locationStreet: "Street", locationStreetNumber: "75 B", locationCounter: [counterElectro])
        locationList.append(altenholz)

        let user1 = CRUser(username: "user1", userid: "uuid1", useremail: "user1@hth.to", userlocation: [altenholz])
        let user2 = CRUser(username: "user2", userid: "uuid2", useremail: "uswr2@ghht.frt.de",userlocation: [hamburg])
        userList.append(user1)
        userList.append(user2)
        
    }
}
