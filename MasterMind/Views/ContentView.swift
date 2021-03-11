//
//  ContentView.swift
//  MasterMind
//
//  Created by Alumne on 9/3/21.
//

import SwiftUI



struct ContentView: View {
    @ObservedObject var viewModel = ViewModel()
    var body: some View {
        VStack {
            ForEach(viewModel.itineraries, id: \.self){ itinerary in
                ItineraryView(title: itinerary.title, description: itinerary.description, imageName: itinerary.imageName)
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}
