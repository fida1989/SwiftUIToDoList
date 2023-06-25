//
//  RegisterView.swift
//  ToDoList
//
//  Created by Appnap WS51 on 17/6/23.
//

import SwiftUI

struct RegisterView: View {
    @State var name = ""
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        VStack {
            HeaderView(title: "Register", subtitle: "Start Organizing todos", angle: -15, background: .orange)
            Form {
                TextField("Full Name", text:$name)
                    .autocorrectionDisabled()
                
                TextField("Email Address", text:$email)
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
               
                SecureField("Password", text:$password)
                
                ButtonView(title: "Create Account", background: .blue) {
                    
                }
            }
            Spacer()
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
