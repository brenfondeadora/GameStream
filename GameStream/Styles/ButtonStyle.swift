//
//  ButtonStyle.swift
//  GameStream
//
//  Created by Brenda Saavedra  on 24/03/23.
//

import Foundation
import SwiftUI

struct PrimaryButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .fontWeight(.bold)
            .foregroundColor(.white)
            .frame( maxWidth: .infinity, alignment: .center)
            .padding(EdgeInsets(top: 11, leading: 18, bottom: 11, trailing: 18))
            .overlay(
                RoundedRectangle(cornerRadius: 6)
                .stroke(Color("Dark-Cyan"), lineWidth: 3)
                .shadow(color: Color("Dark-Cyan"), radius: 6)
            )
     }
}

struct SecondaryButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(15)
            .background(Color(red: 40/255, green: 59/255, blue: 89/255))
            .font(.subheadline)
            .fontWeight(.bold)
            .foregroundColor(.white)
            .padding(.vertical, 3.0)
            .frame( maxWidth: .infinity, alignment: .center)
            .background(Color("Blue-Gray"))
            .clipShape(RoundedRectangle(cornerRadius: 4.0))
    }
}
