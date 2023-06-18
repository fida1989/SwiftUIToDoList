//
//  HeaderView.swift
//  ToDoList
//
//  Created by Appnap WS51 on 19/6/23.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0).foregroundColor(Color.pink)
                .rotationEffect(Angle(degrees: 15))
            
            VStack {
                Text("To Do List").font(.system(size: 50)).foregroundColor(Color.white).bold()
                Text("Get Things Done").font(.system(size: 30)).foregroundColor(Color.white).bold()
            }.padding(.top, 30)
        }.frame(width: UIScreen.main.bounds.width * 3,height: 300)
            .offset(y: -85)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
