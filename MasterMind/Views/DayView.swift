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
    @State var show = false
    
    var body: some View {
        
        ZStack{
           
            VStack{
                HStack{
                    Rectangle().frame(width: 40.0, height: 2.0).foregroundColor(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
                    Text(day.GetDate())
                        .fontWeight(.light)
                        .multilineTextAlignment(.leading)
                        .frame(width: 140, height: 8)
                    Rectangle().frame(width: 30, height: 2.0).foregroundColor(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
                    ButtonView(label: "+", action: {
                                self.show.toggle()
                                viewModel.OpenNewItineraryPopup(day: day)})
                    
                }
                ForEach(day.itineraries, id: \.self){ itinerary in
                    ItineraryView(title: itinerary.title, description: itinerary.description, imageName: itinerary.imageName)
                }
            }
        }
    }
}

struct DayView_Previews: PreviewProvider {
    static var previews: some View {
        let testItineraries = [
            ItineraryModel(title: "Title1", description: "Description1", imageName: "SagradaFamilia"),
            ItineraryModel(title: "Title1", description: "Description1", imageName: "SagradaFamilia"),
            ItineraryModel(title: "Title1", description: "Description1", imageName: "SagradaFamilia"),
            ItineraryModel(title: "Title1", description: "Description1", imageName: "SagradaFamilia"),
            ItineraryModel(title: "Title1", description: "Description1", imageName: "SagradaFamilia")
        ]
        DayView(day: DayModel(itineraries: testItineraries, day: 1, month: "March", year: 2020), viewModel: ViewModel())
    }
}
