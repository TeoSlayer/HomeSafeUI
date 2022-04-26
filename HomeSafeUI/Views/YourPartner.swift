//
//  YourPartner.swift
//  HomeSafeUI
//
//  Created by Calin Teodor on 26.04.2022.
//

import SwiftUI

struct YourPartner: View {
    @State var status: String = "Gym"
    @State var textStatus: String = ""
    var body: some View {
        VStack(spacing: 0){
            VStack(alignment: .leading){
                Button {
                    //
                } label: {
                    TopButton(text: "Back", strokeColor: Color(accentGreen), backgroundColor: Color(accentGreen), textColor: Color(accentRed))
                }.padding()
                
                Text("Your Partner").font(.title).fontWeight(.bold).foregroundColor(Color(accentGreen)).padding()
                
                Button {
                    //
                } label: {
                    ProfileName(text: "Teodor Calin", isPersonal: false)
                }.padding([.horizontal,.top])

               
                
                Text("Currently at \(status)").font(.title).fontWeight(.bold).foregroundColor(Color(accentGreen)).padding([.horizontal,.bottom])
                
                Text("Last updated at: 25 Dec 2022, 10:22 PM").font(.headline).fontWeight(.bold).foregroundColor(Color(accentGreen)).padding()
                
                HStack{
                    Spacer()
                }
            }.background(Color(accentRed))
            
            VStack(alignment: .leading){
                Text("Notify to").font(.title).fontWeight(.bold).foregroundColor(Color(accentRed)).padding()

                Button {
                  
                } label: {
                    BottomButton(text: "Request Location", strokeColor: Color(accentRed), backgroundColor: Color(accentRed), textColor: Color(accentGreen)).padding().padding(.horizontal, 44)
                }
                
                Spacer()

                
            }.background(Color(accentGreen))
        }
    }
}

struct YourPartner_Previews: PreviewProvider {
    static var previews: some View {
        YourPartner()
    }
}
