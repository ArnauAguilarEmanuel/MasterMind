//
//  ItineraryView.swift
//  MasterMind
//
//  Created by Alumne on 11/3/21.
//

import SwiftUI

struct ItineraryView: View, Hashable {
    
    var title : String
    var description : String
    var imageName : String
    
    
    var body: some View {
        HStack{
            VStack(alignment: .leading){
                Text(title)
                    .font(.title)
                    .foregroundColor(Color.black)
                    .multilineTextAlignment(.leading)
                Text(description)
                    .font(.subheadline)
                    .multilineTextAlignment(.leading)
            }
            .padding(.trailing, 100.0)
            
            Image(imageName)
                .resizable()
                .frame(width: 50.0, height: 50.0)
                .scaledToFit()
        }
    }
}

struct ItineraryView_Previews: PreviewProvider {
    static var previews: some View {
        ItineraryView(title: "Itinerary Title", description: "Itinerary Title", imageName: "SagradaFamilia")
    }
}
