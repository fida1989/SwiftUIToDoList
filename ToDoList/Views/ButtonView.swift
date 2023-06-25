//
//  ButtonView.swift
//  ToDoList
//
//  Created by Appnap WS51 on 25/6/23.
//

import SwiftUI

struct ButtonView: View {
    
    let title: String
    let background: Color
    let action: ()-> Void
    
    var body: some View {
        Button{
            action()
        } label: {
            ZStack{
                RoundedRectangle(cornerRadius: 10).foregroundColor(background)
                Text(title).foregroundColor(Color.white).bold()
               
            }

        }.padding()
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(title: "Button", background: .blue){
            
        }
    }
}
