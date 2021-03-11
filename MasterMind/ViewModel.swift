//
//  ViewModel.swift
//  MasterMind
//
//  Created by Alumne on 9/3/21.
//
import SwiftUI
import Foundation

class ViewModel : ObservableObject {
    @Published var itineraries: [ItineraryModel]
    
    init() {
        self.itineraries  = [
            ItineraryModel(title: "Title1", description: "Description1", imageName: "SagradaFamilia"),
            ItineraryModel(title: "Title1", description: "Description1", imageName: "SagradaFamilia"),
            ItineraryModel(title: "Title1", description: "Description1", imageName: "SagradaFamilia"),
            ItineraryModel(title: "Title1", description: "Description1", imageName: "SagradaFamilia"),
            ItineraryModel(title: "Title1", description: "Description1", imageName: "SagradaFamilia")
        ]
    }
}
