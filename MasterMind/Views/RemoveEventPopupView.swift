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
                    HStack{
                        Button("X", action:{
                            viewModel.CloseRemoveItineraryPopup()
                        }).foregroundColor(.white)
                        .frame(width: 25, height: 25, alignment: .center)
                        .background(Color.black)
                        .cornerRadius(25)
                        .padding(.trailing, 40)
                        .padding(.top, 5)
            
                        
                        Text("Select an event")
                            .font(.title2)
                            .padding(.top, 20)
                            .padding(.bottom, 10)
                            .padding(.trailing, 70)
                    }.padding(.bottom, 8)
                
                    Text("The selected event will be removed permanently")
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 20)
                        .frame(width: 220.0, alignment: .center)
                    
                    ScrollView {
                        ForEach(viewModel.selectedDay.itineraries, id: \.self){ currentItinerary in
                            DeleteEventButtonView(viewModel: viewModel, itineraryToDelete: currentItinerary)
                        }
                    }.frame(width: 240, height: 280, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .padding(.bottom, 20)
                    .padding(.top, 10)
                    .background(Color.gray)
                    .cornerRadius(15)
                                                            
                }
                .padding(.bottom, 20)
                .padding(.horizontal, 5)
                .background(Color.white)
                .cornerRadius(15)
                .padding(.horizontal, 15)
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
