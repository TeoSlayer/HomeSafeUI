//
//  MenuItem.swift
//  HomeSafeUI
//
//  Created by Calin Teodor on 26.04.2022.
//

import SwiftUI

struct MenuItem: View {
    var text : String
    var location : textLocated
    var body: some View {
        VStack(spacing: 0){
            HStack{
                if(location == .Trailing){
                    Spacer()
                    Text(text).font(.title).foregroundColor(Color(accentRed)).fontWeight(.bold)
                }
                if(location == .Leading){
                    Text(text).font(.title).foregroundColor(Color(accentRed)).fontWeight(.bold)
                    Spacer()
                }
               
            }
            Rectangle().frame(height: 6).foregroundColor(Color(accentRed))
        }
    }
    
    
    enum textLocated {
        case Leading
        case Trailing
    }
}


struct MenuItem_Previews: PreviewProvider {
    static var previews: some View {
        
        MenuItem(text: "Dev", location: .Leading).padding(.horizontal)
    }
}
