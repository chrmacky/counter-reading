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
    var userOneList = [CRUser]()
    var counterList = [CRBaseCounter]()
    var counterOneList = [CRBaseCounter]()
    var locationList = [CRLocation]()
    var counterValuesList = [CRValues]()
    
    init(userList: [CRUser], counterList: [CRBaseCounter]){
        self.userList = userList
        self.counterList = counterList
        loadMockData()
    }
    
    private func loadMockData(){
        let counterWater1 = CRBaseCounter(counterid: "TER34", countername: "kalt Wasser", counterStartValue: 12.0, counterCat: .Strom, counterLimitValue: 456.55, counterUnit: .Kilowatt, counterValues: counterValuesList)
        
        let counterWater2 = CRBaseCounter(counterid: "FGRT457", countername: "warm Wasser", counterStartValue: 2.0, counterCat: .Wasser, counterLimitValue: 568.8, counterUnit: .qubikmeter, counterValues: counterValuesList)
        
        let counterStrom1 = CRBaseCounter(counterid: "STR567ZHzhg", countername: "Strom", counterStartValue: 0.0, counterCat: .Strom, counterLimitValue: 1234.8, counterUnit: .Kilowatt, counterValues: counterValuesList)
        
        let altenholz = CRLocation(locId: "Erc56vTz", locName: "Kiel", locPLZ: 24116, locStreet: "FleetStree", locStreetNumber: "23T", locUser: userOneList)
        let hamburg = CRLocation(locId: "ArZ54Re4FRT", locName: "Hamburh", locPLZ: 23452, locStreet: "Fischmark", locStreetNumber: "45 B", locUser: userList)
        counterList.append(counterWater2)
        counterList.append(counterStrom1)
        counterOneList.append(counterWater2)

        let user1 = CRUser(username: "user1", userid: "uuid1", useremail: "user1@hth.to", userlocation: [altenholz], usercounter: [counterWater1])
        let user2 = CRUser(username: "user2", userid: "uuid2", useremail: "uswr2@ghht.frt.de",userlocation: [hamburg], usercounter: counterOneList)
        userList.append(user1)
        userList.append(user2)
        userOneList.append(user2)
        
    }
}
