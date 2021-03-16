//
//  ButtonView.swift
//  MasterMind
//
//  Created by Marc on 16/03/2021.
//

import SwiftUI

struct ButtonView: View {
    let label: String
    let action: () -> Void
    
    var body: some View {
        Button(label, action: { action() })
            .frame(width: 18, height: 18, alignment: .center)
            .padding()
            .background(Color.green)
            .foregroundColor(.white)
            .font(.title)
            .cornerRadius(15)
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(label: "+", action: { print("Click" )})
    }
}
