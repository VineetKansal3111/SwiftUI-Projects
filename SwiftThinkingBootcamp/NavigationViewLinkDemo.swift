//
//  NavigationViewLinkDemo.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 09/10/24.
//

import SwiftUI

struct NavigationViewLinkDemo: View {
    var body: some View {
        
        NavigationView{
            ScrollView{
                NavigationLink(destination:ViewSecond(),label:{ Text("Hello World")})
            }
            .navigationTitle("ALL INBOX")
            //.navigationBarTitleDisplayMode(.automatic)
            //.navigationBarHidden(true)
            .navigationBarItems(
                leading:HStack{
                    Image(systemName: "person.fill")
                    Image(systemName: "person.fill")
                },
                trailing:  Image(systemName:"gear"))
        }
    }
}
struct ViewSecond: View {
    @Environment (\.presentationMode) var backButton
    var body: some View {
        ZStack{
            Color.blue
            VStack{
                Button(action: {
                    backButton.wrappedValue.dismiss()
                }, label: {Text("Back")}).foregroundColor(Color.red)
                Text("Here")
                    .padding(90)
                    .background(Color.white)
                    .font(.largeTitle)
            }
        }
    }
}
struct NavigationViewLinkDemo_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewLinkDemo()
    }
}
