//
//  TabViewDemo.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 11/10/24.
//

import SwiftUI

struct TabViewDemo: View {
    // MARK: PROPERTIES
    @State var selectedTab : Int = 0
    
    var body: some View {
        // MARK: BODY
        TabView(selection: $selectedTab){
            HomePageView(selectedTab: $selectedTab)
                .tabItem{
                    Image(systemName: "house.fill")
                    Text("Home")
                }.tag(0)
            Text("Screen2")
                .tabItem{
                    Image(systemName: "flame.fill")
                    Text("icon")
                }.tag(1)
            Text("Profile")
                .tabItem{
                    Image(systemName: "person.fill")
                    Text("profile")
                }.tag(2)
        }
    }
}

struct TabViewDemo_Previews: PreviewProvider {
    static var previews: some View {
        TabViewDemo()
    }
}

struct HomePageView: View {
    @Binding var selectedTab: Int
    var body: some View {
        ZStack{
            Color.green
            VStack(spacing: 20){
                Text("Here is Home Tab")
                    .font(.title)
                
                Button(action: {
                    selectedTab = 2
                }, label: {
                    Text("Go To Profile")
                        .padding()
                        .background(Color.white)
                        .cornerRadius(14)
                    
                })
            }
        }
    }
}
