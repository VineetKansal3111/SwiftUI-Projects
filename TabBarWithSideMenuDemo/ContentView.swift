//
//  ContentView.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 03/01/25.
//

import SwiftUI

struct ContentView: View {
    @State var showMenu: Bool = false
    @State var currentTab = "Home"
    var body: some View {
        
        NavigationView{
                VStack {
                    TabView(selection: $currentTab) {
                        
                        HomeView(showMenu: $showMenu)
                            .tag("house")
                        
                        PrayerView(showMenu: $showMenu)
                            .tag("hands.clap")
                        
                        Text("Scripture")
                            .tag("applescript")
                        
                        Text("Groups View")
                            .tag("person.3")
                        
                        Text("Gratitude View")
                            .tag("heart")
                    }
                    // Custom TabBar
                    HStack(spacing: 20){
                        TabButton(title: "Home", image: "house")
                        TabButton(title: "Prayer", image: "hands.clap")
                        TabButton(title: "Scripture", image: "applescript")
                        TabButton(title: "Groups", image: "person.3")
                        TabButton(title: "Gratitude", image: "heart")
                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.purple.opacity(0.55))
                }
                .overlay(
                SideMenuView(showMenu: $showMenu, currentTab: $currentTab)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .offset(x: showMenu ? 0 : -(UIScreen.main.bounds.width))
                // can't use Transition in if-else
                //                       .transition(.move(edge: .leading))
                //                        .transition(.asymmetric(insertion: .move(edge: .leading),                                     removal: .move(edge: .trailing)))
                )
        }
    }
    
    @ViewBuilder
    func TabButton(title: String,image: String)-> some View{
        Button(action: {
            currentTab = image
        }, label: {
            VStack{
                Image(systemName: image)
                    .foregroundColor(currentTab == image ? .pink : .black)
                Text(title)
                    .foregroundColor(currentTab == image ? .pink : .black.opacity(55))
            }
        }
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

