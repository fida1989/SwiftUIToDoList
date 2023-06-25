//
//  LoginView.swift
//  ToDoList
//
//  Created by Appnap WS51 on 17/6/23.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModel = LoginViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                HeaderView(title: "To Do List", subtitle: "Get Things Done", angle: 15, background: .pink)
                Form {
                    TextField("Email Address",text: $viewModel.email)
                        .autocorrectionDisabled()
                    
                    SecureField("Password",text: $viewModel.password)
                        .autocapitalization(.none)
                        .autocorrectionDisabled()
                    
                    ButtonView(title: "Log In", background: .blue) {
                        
                    }
                }
                VStack{
                    Text("New Around Here?")
                    NavigationLink("Create An Account", destination: RegisterView())
                }.padding(.bottom,50)
                Spacer()
            }
        }
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
