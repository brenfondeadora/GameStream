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
            Spacer()
            if(screen == .login){
                LoginView()
            }else{
                SignInView()
            }
            Spacer()
        }.padding([.top], 30)
    }
}

struct LoginView: View {
    var body: some View {
        Text("LoginView")
    }
}

struct SignInView: View {
    var body: some View {
        Text("SignInView")
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Image("pantalla1").resizable()
        ContentView()
    }
}
