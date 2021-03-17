//
//  ContentView.swift
//  MasterMind
//
//  Created by Alumne on 9/3/21.
//

import SwiftUI



struct ContentView: View {
    
    @ObservedObject var viewModel = ViewModel()
    var body: some View {
        ZStack{
            ScrollView {
                ForEach(viewModel.days, id: \.self){ currentDay in
                    DayView( day: currentDay, viewModel: viewModel)
                }
            }
            if viewModel.showAddEventPopUp{
                GeometryReader{_ in
                    AddEventPopupView(viewModel: viewModel)
                }.background(Color.black.opacity(0.75))
            }
            else if viewModel.showRemoveEventPopUp{
                GeometryReader{_ in
                    RemoveEventPopupView(viewModel: viewModel)
                }.background(Color.black.opacity(0.75))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}
