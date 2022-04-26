//
//  Menu.swift
//  HomeSafeUI
//
//  Created by Calin Teodor on 26.04.2022.
//

import SwiftUI

struct Menu: View {
    var body: some View {
        VStack(alignment: .leading){
            Button {
                //
            } label: {
                TopButton(text: "Back", strokeColor: Color(accentRed), backgroundColor: Color(accentRed), textColor: Color(accentGreen))
            }.padding()

            
            
            Text("Menu").font(.title).fontWeight(.bold).foregroundColor(Color(accentRed)).padding()
            
            Button {
                //
            } label: {
                MenuItem(text: "Your Profile", location: .Leading)
            }.padding()
            Button {
                //
            } label: {
                MenuItem(text: "Your Partner", location: .Leading)
            }.padding()
            
            
            
            Button {
                //
            } label: {
                MenuItem(text: "Dev", location: .Trailing)
            }.padding()
            Button {
                //
            } label: {
                MenuItem(text: "Log Off", location: .Trailing)
            }.padding()
            
            Spacer()
            
            //Version

        }.background(Color(accentGreen))
    }
}

struct Menu_Previews: PreviewProvider {
    static var previews: some View {
        Menu()
    }
}
