//
//  ItinerariModel.swift
//  MasterMind
//
//  Created by Alumne on 11/3/21.
//

import Foundation
import SwiftUI

struct ItineraryModel: Hashable{
    var title : String
    var description : String
    var imageName : String
    
    var time : UInt
    
    func GetDisplayTime() -> String{
        return String(time / 60) + ":" + String(time % 60)
    }
}
