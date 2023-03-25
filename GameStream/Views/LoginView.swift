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
                    Button("¿Olvidaste tu contraseña?", action: {}).foregroundColor(Color("green"))
                }.padding(.horizontal, 30)
                HStack {
                    Button {
                        
                    } label: {
                        Text("INICIAR SESIÓN")
                            .frame(maxWidth: .infinity)
                    }.buttonStyle(PrimaryButtonStyle()).padding(.vertical, 30)
                }.padding(.horizontal, 30)
                Spacer()
                Text("Inicia sesión con estas redes sociales").foregroundColor(.gray)
                HStack{
                    Button {
                        
                    } label: {
                        Text("FACEBOOK")
                            .frame(maxWidth: .infinity)
                    }.buttonStyle(SecondaryButtonStyle())
                    Spacer()
                    Button {
                        
                    } label: {
                        Text(" TWITTER")
                            .frame(maxWidth: .infinity)
                    }.buttonStyle(SecondaryButtonStyle())
                }.padding(.horizontal, 30)
                Spacer()
            }.padding(.horizontal, 10)
        }
    }
}
