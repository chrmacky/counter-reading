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
    var counterValueListWater1 = [CRValues]()
    var counterValueListWater2 = [CRValues]()
    var counterValueListStrom1 = [CRValues]()
    
    init(){
        loadMockData()
    }
    
    // load default sample Data
    private func loadMockData(){
        // Sample Counter reader meter
        let counterWater1 = CRBaseCounter(id: "1", counterid: "TER34", countername: "kalt Wasser", counterStartValue: 12.0, counterCat: .Strom, counterLimitValue: 456.55, counterUnit: .Kilowatt, counterValues: counterValueListWater1)
        let counterWater2 = CRBaseCounter(id: "2", counterid: "FGRT457", countername: "warm Wasser", counterStartValue: 2.0, counterCat: .Wasser, counterLimitValue: 568.8, counterUnit: .qubikmeter, counterValues: counterValueListWater2)
        let counterStrom1 = CRBaseCounter(id: "3", counterid: "STR567ZHzhg", countername: "Strom", counterStartValue: 0.0, counterCat: .Strom, counterLimitValue: 1234.8, counterUnit: .Kilowatt, counterValues: counterValueListStrom1)
        // Sample Location Data
        let altenholz = CRLocation(id: "1", locId: "Erc56vTz", locName: "Kiel", locPLZ: 24116, locStreet: "FleetStree", locStreetNumber: "23T", locUser: userOneList)
        let hamburg = CRLocation(id: "2", locId: "ArZ54Re4FRT", locName: "Hamburh", locPLZ: 23452, locStreet: "Fischmark", locStreetNumber: "45 B", locUser: userList)
        // Add counter reader meter to list
        counterList.append(counterWater2)
        counterList.append(counterStrom1)
        counterOneList.append(counterWater2)
        // Create sample user with counter
        let user1 = CRUser(id: "1", username: "user1", userid: "uuid1", useremail: "user1@hth.to", userlocation: [altenholz], usercounter: [counterWater1])
        let user2 = CRUser(id: "2", username: "user2", userid: "uuid2", useremail: "uswr2@ghht.frt.de",userlocation: [hamburg], usercounter: counterOneList)
        let user3 = CRUser(id: "3", username: "user3", userid: "uuid3", useremail: "user3@gt.de", userlocation: [altenholz], usercounter: counterList)
        userList.append(user1)
        userList.append(user2)
        userOneList.append(user2)
     
        let value1 = CRValues(valId: "trtr", valDate: "1552554674", valCount: 16.8)
        let value2 = CRValues(valId: "rree", valDate: "1551855515", valCount: 13.8)
        let value3 = CRValues(valId: "hhgt", valDate: "1552455115", valCount: 12.8)
        let value4 = CRValues(valId: "zzte", valDate: "1551455115", valCount: 10.8)
        let value5 = CRValues(valId: "zghf", valDate: "1551456115", valCount: 14.8)
        let value6 = CRValues(valId: "adfe", valDate: "1531455115", valCount: 1.8)

        counterValueListWater1.append(contentsOf: [value1, value2, value3, value4])
        counterValueListWater2.append(contentsOf: [value5, value6])
    }
}
