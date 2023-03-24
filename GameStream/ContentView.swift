//
//  ContentView.swift
//  GameStream
//
//  Created by Brenda Saavedra  on 23/03/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 19/255, green: 30/255, blue: 53/255).ignoresSafeArea()
            VStack{
                Image("AppLogo").resizable().aspectRatio(contentMode: .fit).frame(width: 250)
                InitialView()
            }
        }
    }
}

struct InitialView: View {
    
    enum ScreenType {
        case login, signIn
    }
    
    @State var screen:ScreenType = .login
    
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Button("INICIA SESIÓN"){
                    screen = .login
                }.foregroundColor(screen == .login ? .white : .gray)
                Spacer()
                Button("REGISTRO") {
                    screen = .signIn
                }.foregroundColor(screen == .signIn ? .white : .gray)
                Spacer()
            }
            if(screen == .login){
                LoginView()
            }else{
                SignInView()
            }
            Spacer()
        }.padding( .top, 30)
    }
}

struct LoginView: View {
    var body: some View {
        VStack{
            Spacer()
            CustomTextField(title: "Correo electrónico", keyboardType: .emailAddress)
            CustomTextField(title: "Contraseña", keyboardType: .default, isSecureField: true)
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

struct PrimaryButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(15)
            .foregroundColor(.white)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color("green"), lineWidth: 1.5)
            )
     }
}

struct SecondaryButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(15)
            .background(Color(red: 40/255, green: 59/255, blue: 89/255))
            .foregroundColor(.white)
            .clipShape(RoundedRectangle(cornerRadius: 8))
    }
}

struct CustomTextField: View {
    
    @State var value: String = ""
    @State var title: String = ""
    @State var isActive: Bool = false
    @State var keyboardType: UIKeyboardType = .default
    @State var isSecureField: Bool = false
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(title).font(.headline).foregroundColor(isActive ? Color("green") : .white)
          /*  if(isSecureField){
                SecureField("", text: $value).foregroundColor(.gray)
            }else{ */
                TextField("", text: $value, onEditingChanged: {
                    self.isActive = $0
                }, onCommit: {
                    self.value = self.value
                }).keyboardType(keyboardType).foregroundColor(.gray)
          //  }
            Divider().frame(width: .infinity,height: 2).background(isActive ? Color("green") : .gray).padding(.bottom, 20)
            
        }.padding(.horizontal, 30)
    }
}

struct SignInView: View {
    var body: some View {
        Text("SignInView")
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        Image("pantalla1").resizable()
    }
}
