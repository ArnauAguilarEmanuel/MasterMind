//
//  DayModel.swift
//  MasterMind
//
//  Created by Alumne on 11/3/21.
//

import SwiftUI
struct DayModel: Hashable {
    var itineraries: [ItineraryModel]
    var day : Int
    var month : String
    var year : Int
    
    init(itineraries: [ItineraryModel], day: Int, month : String, year : Int) {
        self.itineraries  = itineraries
        self.day = day
        self.month = month
        self.year = year
    }
    
    func GetDate() -> String{
        return  String(self.day) + "/" + self.month + "/" + String(self.year)
    }
}
