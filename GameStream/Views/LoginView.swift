//
//  LoginView.swift
//  GameStream
//
//  Created by Brenda Saavedra  on 24/03/23.
//

import Foundation
import SwiftUI

struct LoginView: View {
    var body: some View {
        ScrollView{
            VStack{
                Spacer()
                CustomTextField(title: "Correo electrónico", placeholder: "email@gmail.com", keyboardType: .emailAddress)
                CustomTextField(title: "Contraseña", placeholder: "12345", keyboardType: .default, isSecureField: true)
                HStack {
                    Spacer()
                    Button("¿Olvidaste tu contraseña?", action: {}).foregroundColor(Color("Dark-Cyan"))
                }.padding(.horizontal, 30)
                
                Button(action: logIn) {
                    Text("INICIAR SESIÓN")
                }.buttonStyle(PrimaryButtonStyle())
                .padding(.horizontal, 30)
                
                
                Spacer()
                Text("Inicia sesión con estas redes sociales").foregroundColor(.gray)
                HStack{
                    Button(action: facebook) {
                       Text("FACEBOOK")
                            .frame(maxWidth: .infinity)
                    }.buttonStyle(SecondaryButtonStyle())
                    Spacer()
                    Button(action: twitter) {
                        Text(" TWITTER")
                            .frame(maxWidth: .infinity)
                    }.buttonStyle(SecondaryButtonStyle())
                }.padding(.horizontal, 30)
                Spacer()
            }.padding(.horizontal, 10)
        }
    }
    
    func logIn() {}
    
    func facebook() {}
    
    func twitter() {}
}
