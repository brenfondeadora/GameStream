//
//  CustomField.swift
//  GameStream
//
//  Created by Brenda Saavedra  on 24/03/23.
//

import Foundation
import SwiftUI

struct CustomTextField: View {
    
    @State var value: String = ""
    @State var title: String = ""
    @State var placeholder: String = ""
    @State var isActive: Bool = false
    @State var keyboardType: UIKeyboardType = .default
    @State var isSecureField: Bool = false
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(title).font(.headline).foregroundColor(isActive ? Color("green") : .white)
          /*  if(isSecureField){
                SecureField("", text: $value).foregroundColor(.gray)
            }else{ */
            TextField("", text: value.isEmpty ? $placeholder : $value, onEditingChanged: {
                    self.isActive = $0
                }, onCommit: {
                    self.value = self.value
                }).font(.caption).keyboardType(keyboardType).foregroundColor(.gray)
          //  }
            Divider().frame(width: .infinity,height: 2).background(isActive ? Color("green") : .gray).padding(.bottom, 20)
            
        }.padding(.horizontal, 30)
    }
}
