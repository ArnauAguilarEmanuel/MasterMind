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
    
    var body: some View {
        GeometryReader { geometry in
            ZStack{
                VStack(alignment: .center){
                    VStack(alignment: .leading){
                        
                            Button("X", action:{
                                viewModel.CloseAddItineraryPopup()
                            }).foregroundColor(.white)
                            .frame(width: 25, height: 25, alignment: .center)
                            .background(Color.black)
                            .cornerRadius(25)
                            .padding(.top, 5)
                
                            Text("Title:")
                                .padding(.top, 10)

                        TextField("title", text: $title)
                            .padding(.leading, 10)
                            .frame(width: 160, height: 30, alignment: .leading)
                            .background(Color.gray)
                            .cornerRadius(5)
                            .foregroundColor(.white)
                            .padding(.bottom, 35.0)
                        
                        Text("Description:")
                        TextField("description", text: $description)
                            .padding(.leading, 10)
                            .frame(width: 160, height: 60, alignment: .leading)
                            .background(Color.gray)
                            .cornerRadius(5)
                            .foregroundColor(.white)
                            .padding(.bottom, 45.0)
                            
                    }
                    
                    Button("Add event", action :{
                        viewModel.AddNewItineraryToDay(title : title, description: description)
                    }).frame(width: 100, height: 30, alignment: .center)
                    .background(Color.green)
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

struct AddEventPopupView_Previews: PreviewProvider {
    static var previews: some View {
        AddEventPopupView(viewModel: ViewModel())
    }
}
