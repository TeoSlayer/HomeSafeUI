//
//  Dev.swift
//  HomeSafeUI
//
//  Created by Calin Teodor on 22.02.2022.
//

import SwiftUI

struct Dev: View {
    @Binding var isActive : Bool
    var body: some View {
        ZStack{
            Color(accentPurple).ignoresSafeArea(.all)
            VStack(alignment: .leading){
                HStack{
                    Button(action: {
                        isActive = false
                    }) {
                        TopButton(text: "Back", strokeColor: Color(accentGrey), backgroundColor: Color(accentPurple), textColor: Color(accentGrey))
                    }
                    Spacer()
                }.padding([.top],UIScreen.main.bounds.height*0.04).padding(.horizontal)
                Text("Hey There! I am Teo.")
                    .foregroundColor(Color(accentGreen))
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.leading)
                    .padding(.top)
                Text("Glad that you’re using my app.  Hope that it helps you and your partner.")
                    .foregroundColor(Color(accentGreen))
                    .padding(.top)
                    .padding(.horizontal)
                Text("This app has no ads( we all hate them, including us, developers ). I would be very thankful if you would buy me a coffee via the button below. It helps keep the app running and you and your partner feel safe. ")
                    .foregroundColor(Color(accentGreen))
                    .padding(.top)
                    .padding(.horizontal)
                HStack{
                    Spacer()
                    Button(action: {
                        if let url = URL(string: "https://www.buymeacoffee.com/teodort?new=1") {
                            UIApplication.shared.open(url)
                        }
                    }) {
                        Image("BuyCoffee")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 94)
                            .cornerRadius(20)
                    }
                    
                    Spacer()
                }.padding(.top,50)
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Version 1.0.0 ")
                            .foregroundColor(Color(accentGreen))
                        Text("Build 20220222 ")
                            .foregroundColor(Color(accentGreen))
                    }
                    Spacer()
                }
            }
        }.navigationBarHidden(true)
    }
}

