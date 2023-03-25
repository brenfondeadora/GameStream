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
            .padding(15)
            .foregroundColor(.white)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color("Dark-Cyan"), lineWidth: 1.5)
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
