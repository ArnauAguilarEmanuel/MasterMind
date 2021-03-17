//
//  DayModel.swift
//  MasterMind
//
//  Created by Alumne on 11/3/21.
//

import SwiftUI

class DayModel : Hashable , ObservableObject{
    
    @Published var itineraries: [ItineraryModel]
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

extension Hashable where Self: AnyObject{

  func hash(into hasher: inout Hasher) {
     hasher.combine(ObjectIdentifier(self))
   }
}

extension Equatable where Self: AnyObject{

   static func ==(lhs: Self, rhs: Self) -> Bool {
      return lhs === rhs
   }
}
