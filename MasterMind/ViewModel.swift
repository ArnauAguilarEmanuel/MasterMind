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
    @Published var showRemoveEventPopUp = false
    
    @Published var selectedDay : DayModel
    
    var testItineraries = [
        ItineraryModel(title: "BCN", description: "Road trip to Sagrada Familia", imageName: "SagradaFamilia", time: 4879),
        ItineraryModel(title: "Title1", description: "Description1", imageName: "SagradaFamilia", time: 4879),
        ItineraryModel(title: "Title1", description: "Description1", imageName: "SagradaFamilia", time: 4879),
        ItineraryModel(title: "Title1", description: "Description1", imageName: "SagradaFamilia", time: 4879),
        ItineraryModel(title: "Title1", description: "Description1", imageName: "SagradaFamilia", time: 4879)
    ]
    
    init() {
        
        self.days = [
            DayModel(itineraries: testItineraries, day: 1, month: "September", year: 2021),
            DayModel(itineraries: testItineraries, day: 2, month: "September", year: 2021),
            DayModel(itineraries: testItineraries, day: 3, month: "September", year: 2021),
            DayModel(itineraries: testItineraries, day: 4, month: "September", year: 2021),
            DayModel(itineraries: testItineraries, day: 5, month: "September", year: 2021)
        ]
        self.selectedDay = DayModel(itineraries: testItineraries, day: 1, month: "September", year: 2021)
    }
    
    func OpenNewItineraryPopup( day : DayModel){
        selectedDay = day
        showAddEventPopUp.toggle()
    }
    
    func OpenRemoveItineraryPopup( day : DayModel){
        selectedDay = day
        showRemoveEventPopUp.toggle()
    }
    
    func AddNewItineraryToDay(title : String, description : String){
        selectedDay.itineraries.append(ItineraryModel(title: title, description: description , imageName: "SagradaFamilia", time: 4879))
        showAddEventPopUp.toggle()
    }
    
    func RemoveItineraryToDay(itineraryToDelete : ItineraryModel){
        var index = 0
        for currentitinerary in selectedDay.itineraries{
            if(currentitinerary == itineraryToDelete){
                selectedDay.itineraries.remove(at: index)
                break
            }
            index+=1
        }
        showRemoveEventPopUp.toggle()
    }
    
    func CloseRemoveItineraryPopup(){
        showRemoveEventPopUp.toggle()
    }
    
    func CloseAddItineraryPopup(){
        showAddEventPopUp.toggle()
    }
    
}
