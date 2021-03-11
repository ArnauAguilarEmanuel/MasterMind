//
//  ContentView.swift
//  MasterMind
//
//  Created by Alumne on 9/3/21.
//

import SwiftUI



struct ContentView: View {
    var itineraries = [
        ItineraryView(),
        ItineraryView(),
        ItineraryView(),
        ItineraryView(),
        ItineraryView()
    ]
    
    var body: some View {
        VStack {
            ForEach(itineraries, id: \.self){ itinerary in
                itinerary
            }
        }
    }
}





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}
