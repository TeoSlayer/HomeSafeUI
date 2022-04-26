//
//  ProfileName.swift
//  HomeSafeUI
//
//  Created by Calin Teodor on 26.04.2022.
//

import SwiftUI

struct ProfileName: View {
    @State var frame: CGSize = .zero
    
    var text : String
    var isPersonal: Bool
    var body: some View {
        VStack(spacing: 0){
            
            HStack{
                if(isPersonal){
                    Text(text).font(.title).foregroundColor(Color(accentGreen)).fontWeight(.bold).padding(.trailing)
                    Image(systemName: "pencil.circle.fill").resizable().frame(width: 24, height: 24, alignment: .center).foregroundColor(Color(accentGreen))
                }
                if(!isPersonal){
                    Text(text).font(.title).foregroundColor(Color(accentGreen)).fontWeight(.bold).padding(.trailing)
                }
            }.readSize(onChange: { textSize in
                frame = textSize
            })
            Rectangle().frame(height: 6).foregroundColor(Color(accentGreen)).frame(width: frame.width)
        }
    }
    
   
    
}

struct ProfileName_Previews: PreviewProvider {
    static var previews: some View {
        ProfileName(text: "Teo Calin", isPersonal: true)
    }
}
