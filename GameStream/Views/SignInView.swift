//
//  SignInView.swift
//  GameStream
//
//  Created by Brenda Saavedra  on 24/03/23.
//

import Foundation
import SwiftUI

struct SignInView: View {
    var body: some View {
        ScrollView{
            VStack(alignment: .center){
                Text("Elije una foto de perfíl")
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    
                Text("Puedes cambiar o elejirla más adelante")
                    .font(.footnote)
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
                    .padding(.bottom)
                
                Button(action: takePhoto, label: {
                    ZStack{
                        Image("perfilEjemplo").resizable().aspectRatio(contentMode: .fit).frame(width: 80.0, height: 80.0)
                        
                        Image(systemName: "camera").foregroundColor(.white)
                    }
                })
            }.padding(.top, 30)
            
            VStack(alignment: .leading){
                CustomTextField(title: "Correo electrónico *", placeholder: "email@gmail.com", keyboardType: .emailAddress)
                CustomTextField(title: "Contraseña *", placeholder: "12345", keyboardType: .default, isSecureField: true)
                CustomTextField(title: "Confirmar contraseña *", placeholder: "12345", keyboardType: .default, isSecureField: true)
                Button(action: signIn) {
                    Text("REGÍSTRATE")
                }.buttonStyle(PrimaryButtonStyle())
                .padding(.horizontal, 30)
                
                Text("Regístrate con redes sociales").frame( maxWidth: .infinity,  alignment: .center).foregroundColor(.white).padding(.top, 30)
                                
                
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
            }.padding(.top, 30)
            
        }
    }
    
    func takePhoto()  { }
    
    func signIn() { }
    
    func facebook() { }
    
    func twitter() { }
}
