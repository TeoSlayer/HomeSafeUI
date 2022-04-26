//
//  TextField.swift
//  HomeSafeUI
//
//  Created by Calin Teodor on 22.02.2022.
//

import SwiftUI

struct TextFieldCustom: View {
    var color: Color
    var placeholder: String
    @Binding var code: String
    var body: some View {
        VStack(alignment: .leading, spacing: 0){
            TextField("", text: $code)
                .placeholder(when: code.isEmpty) {
                    Text(placeholder)
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(color)
                }
                .foregroundColor(color)
                .font(.title)
            Rectangle()
                .foregroundColor(color)
                .frame(height: 6)
                .padding(.top, 18)
            
        }
    }
}

struct TextFieldCustom_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldCustom(color: Color(accentRed), placeholder: "Calin Teodor Ioan", code: .constant(""))
    }
}
