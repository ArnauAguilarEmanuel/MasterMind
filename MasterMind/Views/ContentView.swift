//
//  ContentView.swift
//  MasterMind
//
//  Created by Alumne on 9/3/21.
//

import SwiftUI



struct ContentView: View {
    var lines = [
        GameLine(color1: Color.blue, color2: Color.red, color3: Color.blue, color4: Color.green),
        GameLine(color1: Color.yellow, color2: Color.blue, color3: Color.blue, color4: Color.yellow),
        GameLine(color1: Color.purple, color2: Color.purple, color3: Color.gray, color4: Color.green),
        GameLine(color1: Color.blue, color2: Color.blue, color3: Color.blue, color4: Color.blue)
    ]
    
    var body: some View {
        VStack {
            ForEach(lines, id: \.color1){ line in
                line
            }
            
           // ForEach((1...12), id: \.self){_ in
           //     GameLine(color1: Color.blue, color2: Color.blue, //color3: Color.blue, color4: Color.blue)
           // }
        }
    }
}





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}
