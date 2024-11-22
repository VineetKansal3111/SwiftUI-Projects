//
//  EasilyCreatePlaylist.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 02/11/24.
//

import SwiftUI

struct EasilyCreatePlaylist: View {
    var body: some View {
        ZStack{
            
            Color.black
            VStack{
                Button(action: {}, label:{Text("skip").foregroundColor(Color.white)})
                HStack{
                    Text("Enter a discription for your playlist...")
                    Image(systemName:"square.and.arrow.up")
                } .foregroundColor(Color.white)
                    .padding()
                    .background(Color.pink)
                    .cornerRadius(10)
            }
        }
        
    }
}

struct EasilyCreatePlaylist_Previews: PreviewProvider {
    static var previews: some View {
        EasilyCreatePlaylist()
    }
}
