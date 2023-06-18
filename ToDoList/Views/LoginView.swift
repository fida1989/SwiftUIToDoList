//
//  LoginView.swift
//  ToDoList
//
//  Created by Appnap WS51 on 17/6/23.
//

import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        NavigationView {
            VStack {
                //Header
                HeaderView()
                //Form
                Form {
                    TextField("Email Address",text: $email)
                    SecureField("Password",text: $password)
                    //Button
                    Button{
                        
                    } label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 10).foregroundColor(Color.blue)
                            Text("Log In").foregroundColor(Color.white).bold()
                           
                        }
        
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
