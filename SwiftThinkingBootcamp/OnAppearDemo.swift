//
//  OnAppearDemo.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 11/10/24.
//

import SwiftUI

struct OnAppearDemo: View {
    @State var myText : String = "Start text..."
    var body: some View {
        NavigationView{
            ScrollView{
                Text(myText)
            }
            .onAppear(perform: {
                DispatchQueue.main.asyncAfter(
                    deadline: .now() + 5 ){
                        myText = "This is on appear "
                    }
            })
            .onDisappear(perform: {
                myText = "Ending text"
            })
            
            .navigationTitle("On Appear Demo")
        }
    }
}

struct OnAppearDemo_Previews: PreviewProvider {
    static var previews: some View {
        OnAppearDemo()
    }
}
