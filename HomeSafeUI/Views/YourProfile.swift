//
//  YourProfile.swift
//  HomeSafeUI
//
//  Created by Calin Teodor on 26.04.2022.
//

import SwiftUI

struct YourProfile: View {
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
                
                Text("Your Profile").font(.title).fontWeight(.bold).foregroundColor(Color(accentGreen)).padding()
                
                Button {
                    //
                } label: {
                    ProfileName(text: "Teodor Calin", isPersonal: true)
                }.padding([.horizontal,.top])

               
                
                Text("Currently at \(status)").font(.title).fontWeight(.bold).foregroundColor(Color(accentGreen)).padding([.horizontal,.bottom])
                
                Text("Last updated at: 25 Dec 2022, 10:22 PM").font(.headline).fontWeight(.bold).foregroundColor(Color(accentGreen)).padding()
                
                HStack{
                    Spacer()
                }
            }.background(Color(accentRed))
            
            VStack(alignment: .leading){
                Text("Update Your Status").font(.title).fontWeight(.bold).foregroundColor(Color(accentRed)).padding()
                Text("Enter your current location in the textfield below to update your status to your partner.").font(.headline).fontWeight(.bold).foregroundColor(Color(accentRed)).padding()
                
                TextFieldCustom(color: Color(accentRed), placeholder: status, code: $textStatus).padding()
                
                Button {
                    self.status = textStatus
                    self.textStatus = ""
                } label: {
                    BottomButton(text: "Save Status", strokeColor: Color(accentRed), backgroundColor: Color(accentRed), textColor: Color(accentGreen)).padding().padding(.horizontal)
                }
                
                Spacer()

                
            }.background(Color(accentGreen))
        }
    }
}

struct YourProfile_Previews: PreviewProvider {
    static var previews: some View {
        YourProfile()
    }
}
