
//  HomeView.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 03/01/25.


import SwiftUI

struct HomeView: View {
    @Binding var showMenu: Bool
    var body: some View {
        VStack{
            Button(action: {
                withAnimation{
                    showMenu.toggle()
                }
            }, label: {                HStack{
                Image(systemName: "line.3.horizontal")
                    .resizable()
                    .foregroundColor(.primary)
                    .frame(width: 23,height: 20)
            }
            .padding()
            .frame(maxWidth: .infinity,alignment: .leading)
            .frame(maxHeight: .infinity,alignment: .top)
            })
            
            Text("Home View")
                .font(.system(size: 30,weight: .semibold))
                .foregroundColor(.pink)
                .frame(maxHeight: .infinity,alignment: .top)
        }
    }
}



struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(showMenu: .constant(true))
    }
}
