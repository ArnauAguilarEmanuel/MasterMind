//
//  ViewModel.swift
//  MasterMind
//
//  Created by Alumne on 9/3/21.
//
import SwiftUI
import Foundation

class ViewModel : ObservableObject {
    @Published var days: [DayModel]
    @Published var showAddEventPopUp = false
    
    var testItineraries = [
        ItineraryModel(title: "BCN", description: "Road trip to Sagrada Familia", imageName: "SagradaFamilia"),
        ItineraryModel(title: "Title1", description: "Description1", imageName: "SagradaFamilia"),
        ItineraryModel(title: "Title1", description: "Description1", imageName: "SagradaFamilia"),
        ItineraryModel(title: "Title1", description: "Description1", imageName: "SagradaFamilia"),
        ItineraryModel(title: "Title1", description: "Description1", imageName: "SagradaFamilia")
    ]
    
    init() {
        
        self.days = [
            DayModel(itineraries: testItineraries, day: 1, month: "September", year: 2021),
            DayModel(itineraries: testItineraries, day: 2, month: "September", year: 2021),
            DayModel(itineraries: testItineraries, day: 3, month: "September", year: 2021),
            DayModel(itineraries: testItineraries, day: 4, month: "September", year: 2021),
            DayModel(itineraries: testItineraries, day: 5, month: "September", year: 2021)
        ]
    }
    
    func AddItineraryToDay( day : DayModel){
        print("CLICK")
        
        showAddEventPopUp.toggle()
    }
    
}
