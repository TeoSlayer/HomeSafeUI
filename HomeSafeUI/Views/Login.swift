//
//  Login.swift
//  HomeSafeUI
//
//  Created by Calin Teodor on 22.02.2022.
//

import SwiftUI

struct Login: View {
    var body: some View {
        VStack(alignment: .leading){
            Image("TransparentLogoFull").resizable().frame(width: 185, height: 185, alignment: .center).padding(.top,144).padding(.leading, 53)
            Text("HomeSafe").foregroundColor(Color(accentGrey))
                .font(.title).padding(.leading, 59)
            Text("Know when your partner is home safe.").foregroundColor(Color(accentGreen))
                .font(.body).padding(.leading, 59)
            Spacer()
            Rectangle().foregroundColor(.white).cornerRadius(15).frame(height: 50).padding(.horizontal,59).padding(.bottom)

        }.background(Color(accentPurple))
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
