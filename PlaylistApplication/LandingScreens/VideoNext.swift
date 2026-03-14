//
//  VideoNext.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 28/10/24.
//

import SwiftUI

struct VideoNext: View {
    var body: some View {
       
        NavigationView {
            ZStack{
                Image("LandingPersonImg")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                
                VStack{
                    Image("LogoImg")
                    
                    Spacer()
                    VStack{
                        Image(systemName: "play.square")
                            .font(.system(size: 35))
                        Text("Video")
                            .bold()
                            .font(.system(size: 30))
                    }
                    .padding(.vertical,40)
                    .padding(.horizontal,30)
                    .background(Color.white.opacity(0.3))
                    .cornerRadius(20)
                    Spacer()
                    NavigationLink(destination: WelcomeTuneAI(), label: {
                        CustomButton(width: .infinity, height: 60, buttonColor: Color.pink, title: "Next")

                    })
                    .border(.black, width: 4)
                    .padding()
                }
            }
        }  .navigationBarBackButtonHidden(true)}
      
    struct VideoNext_Previews: PreviewProvider {
        static var previews: some View {
            VideoNext()
        }
    }
}
