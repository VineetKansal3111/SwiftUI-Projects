//
//  BackgroundOverlays.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 05/10/24.
//

import SwiftUI

struct BackgroundOverlays: View {
    var body: some View {
//        Text("")
//            .frame(width:200,height: 200)
//            .background(Circle().fill(Color.blue).scaledToFit())
//            .frame(width:250,height:250)
//            .overlay {
//                Text("eee")
//            }
//            .background(Circle().fill(Color.red).scaledToFit())
        
        Image(systemName: "heart.fill")
            .resizable()
            
            .frame(width: 50,height: 50)
            .font(.system(size:50))
            .foregroundColor(Color.white)
            .frame(width: 100,height: 100)
            .background(
                Circle()
                    .fill(Color.indigo)
                )
            .shadow(radius: 10)
        
            .overlay(
                Text("2")
                    .background(
                        Circle()
                        .fill(Color.green)
                        .frame(width: 30,height: 30)
                        .padding()
                    ),
                alignment: .bottomTrailing
            )
    }
}

struct BackgroundOverlays_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundOverlays()
    }
}
