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
        }
    }
    
    func takePhoto()  { }
}
