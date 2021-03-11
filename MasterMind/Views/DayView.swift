//
//  DayView.swift
//  MasterMind
//
//  Created by Alumne on 11/3/21.
//

import SwiftUI

struct DayView: View {
    var day : Int
    var month : String
    var year : Int
    
    @ObservedObject var viewModel = ViewModel()
    
    var body: some View {
        VStack{
            HStack{
                Rectangle().frame(width: 50.0, height: 2.0).foregroundColor(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
                let date : String = String(day) + "/" + month + "/" + String(year)
                Text(date)
                    .fontWeight(.light)
                    .multilineTextAlignment(.leading)
                Rectangle().frame(width: 130.0, height: 2.0).foregroundColor(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
            
            }
            ForEach(viewModel.itineraries, id: \.self){ itinerary in
                ItineraryView(title: itinerary.title, description: itinerary.description, imageName: itinerary.imageName)
            }
            
        }
    }
}

struct DayView_Previews: PreviewProvider {
    static var previews: some View {
        DayView(day: 0, month: "March", year: 1990)
    }
}
