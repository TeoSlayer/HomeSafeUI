//
//  EditName.swift
//  HomeSafeUI
//
//  Created by Calin Teodor on 26.04.2022.
//

import SwiftUI

struct EditName: View {
    
    @State var name: String = "Teo Calin"
    var body: some View {
        VStack(spacing: 0){
            VStack(alignment: .leading){
                Button {
                    //
                } label: {
                    TopButton(text: "Back", strokeColor: Color(accentGreen), backgroundColor: Color(accentGreen), textColor: Color(accentRed))
                }.padding()
                
                Text("Edit Name").font(.title).fontWeight(.bold).foregroundColor(Color(accentGreen)).padding()
                
                Spacer()
                
                TextFieldCustom(color: Color(accentGreen), placeholder: name, code: $name).padding()
                
                Spacer()
                
                Button {
                  
                } label: {
                    BottomButton(text: "Save", strokeColor: Color(accentGreen), backgroundColor: Color(accentGreen), textColor: Color(accentRed)).padding().padding(.horizontal, 44)
                }
                
                HStack{
                    Spacer()
                }
               
            }.background(Color(accentRed))
            
           
        }
    }
}

struct EditName_Previews: PreviewProvider {
    static var previews: some View {
        EditName()
    }
}
