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
    
    init(userList: [CRUser], counterList: [CRBaseCounter]){
        self.userList = userList
        self.counterList = counterList
        loadMockData()
    }
    
    func loadMockData(){
        let user1 = CRUser(username: "user1", userid: "uuid1", useremail: "user1@hth.to")
        let user2 = CRUser(username: "user2", userid: "uuid2", useremail: "uswr2@ghht.frt.de")
        userList.append(user1)
        userList.append(user2)
        let counterWater1 = CRSquareCounter(counterid: "counterID1", countername: "klat Wasserzähler", counterStartValue: 0.0, counterCat: .Wasser, counterLimitValue: 3000.0, counterSquare: 0.0)
        let altenholz = CRLocation(id: "alten1", locationName: "Altenholz", locationPLZ: 66666, locationStreet: "StarssenName", locationStreetNumber: "23", locationCounter: [counterWater1])
    }
}
