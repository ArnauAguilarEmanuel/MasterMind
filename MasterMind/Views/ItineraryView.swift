//
//  ItineraryView.swift
//  MasterMind
//
//  Created by Alumne on 11/3/21.
//

import SwiftUI

struct ItineraryView: View, Hashable {
    var body: some View {
        HStack{
            VStack(alignment: .leading){
                Text("Itinerary Title")
                    .font(.title)
                    .foregroundColor(Color.black)
                    .multilineTextAlignment(.leading)
                Text("Itinerary Title")
                    .font(.subheadline)
                    .multilineTextAlignment(.leading)
            }
            .padding(.trailing, 100.0)
            
            Image("SagradaFamilia")
                .resizable()
                .frame(width: 50.0, height: 50.0)
                .scaledToFit()
        }
        
        
        
    }
}

struct ItineraryView_Previews: PreviewProvider {
    static var previews: some View {
        ItineraryView()
    }
}
