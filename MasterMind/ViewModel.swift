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
        ItineraryModel(title: "Parc Güell", description: "Road trip to Parc Güell", imageName: "SagradaFamilia", time: 839),
        ItineraryModel(title: "Sagrada Familia", description: "Visit the sagrada Familia", imageName: "SagradaFamilia", time: 1025),
        ItineraryModel(title: "Monjuïc", description: "Excursion to Monjuïc", imageName: "SagradaFamilia", time: 580),
        ItineraryModel(title: "Bunkers", description: "Climb t the bunkers of BCN", imageName: "SagradaFamilia", time: 1079),
        ItineraryModel(title: "La Gastronomica", description: "Dinner in a restaurant", imageName: "SagradaFamilia", time: 660)
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
        
        days.forEach { (day) in
            SortItinenariesByTime(itinenaries: &day.itineraries)
        }
        
        SortItinenariesByTime(itinenaries: &selectedDay.itineraries)
        
        
    }
    
    func OpenNewItineraryPopup( day : DayModel){
        selectedDay = day
        showAddEventPopUp.toggle()
    }
    
    func OpenRemoveItineraryPopup( day : DayModel){
        selectedDay = day
        showRemoveEventPopUp.toggle()
    }
    
    func AddNewItineraryToDay(title : String, description : String, hours: String, minutes : String){
        let time = UInt(hours)! * 60 + UInt(minutes)!
        selectedDay.itineraries.append(ItineraryModel(title: title, description: description , imageName: "SagradaFamilia", time: time))
        SortItinenariesByTime(itinenaries: &selectedDay.itineraries)
        showAddEventPopUp.toggle()
    }
    
    func SortItinenariesByTime(itinenaries : inout [ItineraryModel]){
    
        var temp : ItineraryModel
        
        for i in 0 ..< (itinenaries.count){
            for j in 0 ..< (itinenaries.count - i - 1){
                if(itinenaries[j].time > itinenaries[j+1].time){
                    temp = itinenaries[j]
                    itinenaries[j] = itinenaries[j+1]
                    itinenaries[j+1] = temp
                }
            }
        }
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
