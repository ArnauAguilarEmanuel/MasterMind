//
//  DeleteEventButtonView.swift
//  MasterMind
//
//  Created by Marc on 17/03/2021.
//

import SwiftUI

struct DeleteEventButtonView: View {
    
    var viewModel : ViewModel
    var itineraryToDelete : ItineraryModel
    
    var body: some View {
        Button(itineraryToDelete.title, action: {
            viewModel.RemoveItineraryToDay(itineraryToDelete: itineraryToDelete)
        }).frame(width:200, height:30, alignment: .center)
        .foregroundColor(.white)
        .background(Color.blue)
        .cornerRadius(10)
        .padding(.bottom, 5)
    }
}

struct DeleteEventButtonView_Previews: PreviewProvider {
    static var previews: some View {
        DeleteEventButtonView(viewModel: ViewModel(), itineraryToDelete: ItineraryModel(title: "Title1", description: "Description1", imageName: "SagradaFamilia", time: 4829))
    }
}
