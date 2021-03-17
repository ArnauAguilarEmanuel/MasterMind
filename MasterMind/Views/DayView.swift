//
//  DayView.swift
//  MasterMind
//
//  Created by Alumne on 11/3/21.
//

import SwiftUI

struct DayView: View {
    
    @ObservedObject var day : DayModel
    @ObservedObject var viewModel : ViewModel
    
    var body: some View {
        
        ZStack{
           
            VStack{
                HStack(){
                    Button("-", action: {
                            viewModel.OpenRemoveItineraryPopup(day: day)})
                        .foregroundColor(.white)
                    .frame(width: 30, height: 30, alignment: .center)
                    .background(Color.red)
                    .cornerRadius(8)
                    
                    Rectangle().frame(width: 30.0, height: 2.0).foregroundColor(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
                    Text(day.GetDate())
                        .fontWeight(.light)
                        .multilineTextAlignment(.leading)
                        .frame(width: 140, height: 8)
                    Rectangle().frame(width: 30, height: 2.0).foregroundColor(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
                    
                    Button("+", action: {
                            viewModel.OpenNewItineraryPopup(day: day)})
                        .foregroundColor(.white)
                    .frame(width: 30, height: 30, alignment: .center)
                    .background(Color.green)
                    .cornerRadius(8)
                }.padding(.vertical, 20)

                ForEach(day.itineraries, id: \.self){ itinerary in
                    ItineraryView(title: itinerary.title, description: itinerary.description, imageName: itinerary.imageName, textTime: itinerary.GetDisplayTime())
                }
            }
        }
    }
}

struct DayView_Previews: PreviewProvider {
    static var previews: some View {
        let testItineraries = [
            ItineraryModel(title: "Title1", description: "Description1", imageName: "SagradaFamilia", time: 4830),
            ItineraryModel(title: "Title1", description: "Description1", imageName: "SagradaFamilia", time: 1827),
            ItineraryModel(title: "Title1", description: "Description1", imageName: "SagradaFamilia", time: 4890),
            ItineraryModel(title: "Title1", description: "Description1", imageName: "SagradaFamilia", time: 6815),
            ItineraryModel(title: "Title1", description: "Description1", imageName: "SagradaFamilia", time: 2878)
        ]
        DayView(day: DayModel(itineraries: testItineraries, day: 1, month: "March", year: 2020), viewModel: ViewModel())
    }
}
