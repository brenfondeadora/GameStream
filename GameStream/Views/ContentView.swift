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

struct InitialView2: View {
    
    
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Button("INICIA SESIÓN"){
                    
                }.foregroundColor(.gray)
                Spacer()
                Button("REGISTRO") {
                    
                }.foregroundColor( .white )
                Spacer()
            }
            
            SignInView()
            
            Spacer()
        }.padding( .top, 30)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        Image("pantalla1").resizable()
    }
}
