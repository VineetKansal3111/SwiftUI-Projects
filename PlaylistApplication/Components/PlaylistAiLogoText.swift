//
//  TuneListLogoText.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 28/10/24.
//

import SwiftUI

struct TuneAILogoText: View {
    var body: some View {
        HStack(spacing:2){
            Image("LogoImg")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
            HStack{
                Text("Playlist")
                    .font(.system(size: 30))
                    .foregroundColor(.white)
                
                
                Text("AI")
                    .font(.largeTitle)
                    .foregroundColor(.pink)
                    .bold()
            }.padding(.bottom)
            
        }
    }
}

struct TuneAILogoText_Previews: PreviewProvider {
    static var previews: some View {
        TuneAILogoText()
    }
}
