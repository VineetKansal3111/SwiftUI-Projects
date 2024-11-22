//
//  CustomizedPlaylist.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 02/11/24.
//

import SwiftUI

struct CustomizedPlaylist: View {
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Spacer()
                Text("Skip")
                .foregroundColor(.white)}
            Spacer()
            HStack {
                
                HStack {
                    Image(systemName: "circle.fill")
                        .resizable()
                        .foregroundColor(.white)
                        .frame(width: 50, height: 50)
                        .clipShape(Circle())
                        .padding(.leading)
                    
                    VStack(alignment: .leading) {
                        Text("Soul White Day")
                            .font(.system(size: 20))
                            .foregroundColor(.white)
                        
                        Text("Die the Starmin")
                            .foregroundColor(.gray)
                    }
                    
                    Spacer()
                    
                    Image("LandingPersonImg")
                        .resizable()
                        .frame(width: 130, height: 80)
                        .padding(2)
                        
                }
                
                .frame(maxWidth:.infinity)
                .background(Color.black)
                .cornerRadius(15)
                
            }.padding(4)
                .background(
                    LinearGradient(
                        gradient: Gradient(colors: [Color.blue, Color.black]),
                        startPoint: .leading,
                        endPoint: .trailing
                    )
                )
                .cornerRadius(19)
               
                
              
               Spacer()
            CustomText(TextColor: .white, title: "Customized Playlists with AI", height: 50)
            
            Spacer()
                   .frame(height: 20)
            CustomText(TextColor: .purple, title: "Customized Playlists with AI Join the resolution in the music discovery Join the resolution in the music discovery Join the resolution in the music discovery", height: 15)
            Spacer()
                   .frame(height: 20)
            CustomButton(width: .infinity, height: 50, buttonColor: Color.pink, title: "Next")
           
            
        }.padding()
            .background(
                Color.black
                //                Image("LandingPersonImg")
                //                    .resizable()
                //                    .edgesIgnoringSafeArea(.all)
            )
        
    }
}

struct CustomizedPlaylist_Previews: PreviewProvider {
    static var previews: some View {
        CustomizedPlaylist()
    }
}
