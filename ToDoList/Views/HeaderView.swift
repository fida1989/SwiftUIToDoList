//
//  HeaderView.swift
//  ToDoList
//
//  Created by Appnap WS51 on 19/6/23.
//

import SwiftUI

struct HeaderView: View {
    let title: String
    let subtitle : String
    let angle: Double
    let background: Color
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0).foregroundColor(background)
                .rotationEffect(Angle(degrees: angle))
            
            VStack {
                Text(title).font(.system(size: 50)).foregroundColor(Color.white).bold()
                Text(subtitle).font(.system(size: 30)).foregroundColor(Color.white).bold()
            }.padding(.top, 30)
        }.frame(width: UIScreen.main.bounds.width * 3,height: 300)
            .offset(y: -85)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(title: "Title", subtitle: "Subtitle", angle: 15, background: .blue)
    }
}
