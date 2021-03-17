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
    var textTime : String
    
    
    var body: some View {
        HStack{
            VStack(alignment: .leading){
                HStack{
                    Text(title)
                        .font(.title)
                        .foregroundColor(.white)
                        .frame(width: 200, alignment: .leading)
                        .padding(.leading, 10)
                    Text(textTime)
                        
                    
                }.padding(.bottom, 6)
                
                Text(description)
                    .font(.subheadline)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.leading)
                    .frame(width: 200, alignment: .leading)
                    .padding(.leading, 10)
            }.frame(minWidth: 220, idealWidth: 220, maxWidth: 220, minHeight: 60, idealHeight: 60, maxHeight: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            Image(imageName)
                .resizable()
                .frame(width: 50.0, height: 50.0, alignment: .center)
                .scaledToFit()
                .padding(.trailing, 6)
                .padding(.top, 15)
        }
        .padding(.bottom, 20)
        .padding(.top, 5)
        .background(Color.gray)
        .cornerRadius(10)
        
    }
}

struct ItineraryView_Previews: PreviewProvider {
    static var previews: some View {
        ItineraryView(title: "Itinerary Title", description: "Itinerary Title", imageName: "SagradaFamilia", textTime: "17:30")
    }
}
