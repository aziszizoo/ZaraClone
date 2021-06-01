//
//  LoginScreen.swift
//  ZaraClone
//
//  Created by ZISACHMAD on 21/05/21.
//

import SwiftUI

struct LoginScreen: View {
    
    var onDismiss = {}
    @State private var email = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    
    var body: some View {
        
        VStack {
            HStack {
                CloseButton()
                Spacer()
            }
            
            Spacer()
            
            VStack(spacing: 20) {
                
                VStack {
                    TextField("Email", text: self.$email)
                    Divider()
                }
                
                VStack {
                    SecureField("Password", text: self.$email)
                    Divider()
                }
                
                FilledButton(text: "LOG IN", action: onDismiss)
                    .frame(maxWidth: .infinity)
                    .reverseBgColor()
                
                NakedButton(text: "Have you forgotten your password?")
            }
            Spacer()
            
            VStack {
                BorderedButton(text: "CHAT", action: {})
                NakedButton(text: "Don't have an account? Register")
            }
        }.padding()
    }
}

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}

