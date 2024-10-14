//
//  PageTabViewDemo.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 11/10/24.
//

import SwiftUI

struct PageTabViewDemo: View {
    let icons : [String] = ["heart.fill","ladybug","house.fill"]
    var body: some View {
        TabView{
            ForEach(icons, id: \.self){ icons in
                Image(systemName: icons)
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal,30)
                    .foregroundColor(.pink)
            }
            
        }
        .background(Color.blue)
        .tabViewStyle(PageTabViewStyle())
    }
}

struct PageTabViewDemo_Previews: PreviewProvider {
    static var previews: some View {
        PageTabViewDemo()
    }
}
