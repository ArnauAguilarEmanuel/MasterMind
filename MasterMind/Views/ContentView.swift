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
            
            List {
                ForEach(viewModel.days, id: \.self){ currentDay in
                    DayView( day: currentDay, viewModel: viewModel)
                }
            }
            if viewModel.showAddEventPopUp{
                GeometryReader{_ in
                    AddEventPopupView()
                }.background(Color.black.opacity(0.65))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}
