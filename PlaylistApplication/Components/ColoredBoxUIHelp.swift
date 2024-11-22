//
//  ColoredBoxUIHelp.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 28/10/24.
//

import SwiftUI

struct ColoredBoxUIHelp: View {
    var body: some View {
        
        VStack(alignment: .leading){
            Text("Night \nCoolness")
                .font(.title)
                .foregroundColor(.white)
            Spacer()
            HStack{
                Image("LogoImg")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50,height: 50)
                Text("Playlist Application Design")
            }
            .background(Color.purple)
        }.frame(width: 200, height: 180)
            .background(Color.blue)
            .cornerRadius(12)
        
        
        
    }
}

struct ColoredBoxUIHelp_Previews: PreviewProvider {
    static var previews: some View {
        ColoredBoxUIHelp()
    }
}
