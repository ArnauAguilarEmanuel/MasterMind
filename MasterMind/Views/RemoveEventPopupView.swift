//
//  RemoveEventPopupView.swift
//  MasterMind
//
//  Created by Marc on 17/03/2021.
//

import SwiftUI

struct RemoveEventPopupView: View {
    
    @ObservedObject var viewModel : ViewModel
    
    @State var title: String = "new title"
    @State var description: String = "new description"
    
    var body: some View {
        GeometryReader { geometry in
            ZStack{
                VStack(alignment: .center){
                    VStack(alignment: .center){
                        Text("Select an event")
                            .padding(.top, 20)
                            .padding(.bottom, 30)
                    
                        Text("The selected event will be removed permanently")
                            .padding(.bottom, 20)
                    }
                    
                    Button("Remove", action :{
                        viewModel.RemoveItineraryToDay(day : viewModel.selectedDay)
                    }).frame(width: 100, height: 30, alignment: .center)
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(5)
                    .padding(.bottom, 20)
                    
                }.padding(.vertical, 10)
                .padding(.horizontal, 20)
                .background(Color.white)
                .cornerRadius(15)
                .frame(width: geometry.size.width, height: geometry.size.height, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            }
        }
    }
}

struct RemoveEventPopupView_Previews: PreviewProvider {
    static var previews: some View {
        RemoveEventPopupView(viewModel: ViewModel())
    }
}
