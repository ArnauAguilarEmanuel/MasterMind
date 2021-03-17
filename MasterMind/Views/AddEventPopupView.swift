//
//  PopupView.swift
//  MasterMind
//
//  Created by Marc on 16/03/2021.
//

import SwiftUI

struct AddEventPopupView: View {
    
    @ObservedObject var viewModel : ViewModel
    
    @State var title: String = "new title"
    @State var description: String = "new description"
    @State var hours: String = "h"
    @State var minutes: String = "m"
    
    var body: some View {
        GeometryReader { geometry in
            ZStack{
                Rectangle()
                VStack(alignment: .center){
                    VStack(alignment: .leading){
                        
                            Button("X", action:{
                                viewModel.CloseAddItineraryPopup()
                            }).foregroundColor(.white)
                            .frame(width: 25, height: 25, alignment: .center)
                            .background(Color.black)
                            .cornerRadius(25)
                            .padding(.top, 5)
                            .padding(.leading, -30)
                
                            Text("Title:")
                                .padding(.top, 10)
                                .padding(.bottom, -5)

                        TextField("title", text: $title)
                            .padding(.leading, 10)
                            .frame(width: 160, height: 30, alignment: .leading)
                            .background(Color.gray)
                            .cornerRadius(5)
                            .foregroundColor(.white)
                            .padding(.bottom, 8)
                        
                        Text("Description:")
                            .padding(.bottom, -5)
                        TextField("description", text: $description)
                            .padding(.leading, 10)
                            .multilineTextAlignment(.leading)
                            .frame(width: 160, height: 60, alignment: .leading)
                            .background(Color.gray)
                            .cornerRadius(5)
                            .foregroundColor(.white)
                            .padding(.bottom, 8)
                        
                        Text("Time: (24h)")
                            .padding(.bottom, -5)
                        HStack(alignment: .center){
                            TextField("h", text: $hours)
                                .padding(.leading, 10)
                                .frame(width: 40, height: 30, alignment: .center)
                                .background(Color.gray)
                                .cornerRadius(5)
                                .foregroundColor(.white)
                                .keyboardType(.numberPad)
                                .padding(.leading, 30)
                            
                            Text(":")
                            
                            TextField("m", text: $minutes)
                                .padding(.leading, 10)
                                .frame(width: 40, height: 30, alignment: .center)
                                .background(Color.gray)
                                .cornerRadius(5)
                                .foregroundColor(.white)
                                .keyboardType(.numberPad)
                        }.padding(.bottom, 25.0)
                                    
                    }
                    
                    Button("Add event", action :{
                        viewModel.AddNewItineraryToDay(title : title, description: description, hours : hours, minutes : minutes)
                    }).frame(width: 100, height: 30, alignment: .center)
                    .background(Color.green)
                    .padding(.bottom, 20)
                    .cornerRadius(5)
                    
                }.padding(.vertical, 10)
                .padding(.horizontal, 40)
                .background(Color.white)
                .cornerRadius(15)
                .frame(width: geometry.size.width, height: geometry.size.height, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            }
        }
    }
}

struct AddEventPopupView_Previews: PreviewProvider {
    static var previews: some View {
        AddEventPopupView(viewModel: ViewModel())
    }
}
