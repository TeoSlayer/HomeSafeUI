//
//  HotspotItem.swift
//  HomeSafeUI
//
//  Created by Calin Teodor on 26.04.2022.
//

import SwiftUI

struct HotspotItem: View {
    
    var text : String?
    var type : ItemType
    
    var body: some View {
        VStack(spacing: 2){
            HStack{
                if(type == .New){
                    Button(action: {
                        
                    }, label: {
                        Group{
                        Text("Add new Hotspot").font(.title2).foregroundColor(Color(accentRed)).fontWeight(.bold)
                        Spacer()
                        Image(systemName: "plus.square.fill").frame(width: 26, height: 26, alignment: .center).foregroundColor(Color(accentRed))
                        }
                    })
                    
                    
                }
                if(type == .Stored){
                    Button(action: {
                        
                    }, label: {
                        Text(text!).font(.title2).foregroundColor(Color(accentRed)).fontWeight(.bold)
                    })
                    
                    
                    Spacer()
                    Button(action: {
                        //add action
                    }, label: {
                        Image(systemName: "minus.square.fill").resizable().frame(width: 20, height: 20, alignment: .center).foregroundColor(Color(accentRed))
                    })
                    
                }
               
            }
            Rectangle().frame(height: 6).foregroundColor(Color(accentRed))
        }
    }
    
    enum ItemType{
        case New
        case Stored
    }
}

struct HotspotItem_Previews: PreviewProvider {
    static var previews: some View {
        HotspotItem(text: "Gym", type: .New).padding(.horizontal)
    }
}
