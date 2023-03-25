//
//  InitialView.swift
//  GameStream
//
//  Created by Brenda Saavedra  on 24/03/23.
//

import Foundation
import SwiftUI

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
