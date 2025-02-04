//
//  SideMenuView.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 03/01/25.
//

import SwiftUI

struct SideMenuView: View {
    @Binding var showMenu: Bool
    @Binding var currentTab: String
    
    var body: some View {
        VStack(alignment: .leading){
            
            headerView
            
            contentView
            
            Spacer()
        }
        .padding(.horizontal,20)
        .frame(maxHeight: .infinity)
        .background(Color.white)
        .edgesIgnoringSafeArea(.all)
    }
    
    //Mark: headerView
    var headerView: some View {
        HStack{
            Button(action: {
                withAnimation(.linear) {
                    showMenu = false
                }
            },label: {
                Image(systemName: "chevron.backward")
                    .resizable()
                    .frame(width: 13, height: 15)
                    .bold()
                    .foregroundColor(.black)
            })
            
            Text("Menu")
                .foregroundColor(.black)
                .font(.system(size: 35,weight: .bold))
                .padding(.leading)
        }
        .padding(.top,80)
        
    }
    
    var contentView: some View {
        ScrollView {
            VStack {
                HStack {
                    TabButton(icon: "hands.clap", title: "Prayer",tab: "hands.clap")
                    TabButton(icon: "applescript", title: "Scripture", tab: "applescript")
                }
                HStack {
                    TabButton(icon: "person.3", title: "Groups", tab: "person.3")
                    TabButton(icon: "heart", title: "Gratitude", tab: "heart")
                }
                HStack{
                    TabButton(icon: "house", title: "Home", tab: "house")
                        .frame(width: 194)
                    Spacer()
                }
            }
        }
    }
    @ViewBuilder
    func TabButton(icon: String,title: String, tab: String)-> some View{
        // To make seperate pages of sidemenu not tabbars
//        NavigationLink{
//            Text("\(title) View")
//                .navigationTitle(title)
//        } label: {
        Button(action: {
            currentTab = tab
            withAnimation {
                showMenu = false // Close the menu
            }
        }, label: {
            VStack(alignment: .leading){
                
                Image(systemName: icon)
                    .resizable()
                    .bold()
                    .foregroundColor(.black)
                    .frame(width: 25,height: 25)
                
                Text(title)
                    .foregroundColor(.black)
                    .font(.system(size: 20,weight: .bold))
            }
            .padding()
            .frame(maxWidth: .infinity,alignment: .leading)
            .background(Color.purple.opacity(0.85))
            .cornerRadius(10)
        })
//        }
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView(showMenu: .constant(true), currentTab: .constant("house"))
    }
}
