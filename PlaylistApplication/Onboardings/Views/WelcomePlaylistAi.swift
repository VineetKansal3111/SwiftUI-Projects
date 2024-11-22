//
//  WelcomePlaylistAi.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 28/10/24.
//

import SwiftUI

struct WelcomePlaylistAi: View {
    var body: some View {
        VStack(alignment: .leading,spacing: 20){
            Spacer()
            PlaylistAiLogoText()
            Text("Welcome  to \n PlaylistAi")
                .bold()
                .font(.system(size: 40))
                .foregroundColor(.white)
                
            Text("To find the best in the world of music,you need to powerful playlist maaster")
                .foregroundColor(.white)
                .bold()
            
            CustomButton(width: .infinity, height: 60, buttonColor: Color.pink, title: "Get Started")
            
        }.padding()
            .background(
                Image("LandingPersonImg")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
            )
    }
}

struct WelcomePlaylistAi_Previews: PreviewProvider {
    static var previews: some View {
        WelcomePlaylistAi()
    }
}
