//
//  IntroView.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 25/10/24.
//

import SwiftUI

struct IntroView: View {
    @AppStorage("signed_in") var currentUserSignedIn = false
    var body: some View {
        ZStack{
            RadialGradient(
                gradient: Gradient(colors: [Color.green,Color.blue,Color.red]),
                center: .center,
            startRadius: 5,
                endRadius:500
            )
                if currentUserSignedIn == true{
                    Text("Signed In")
                }
                else{
                    Text("Not Signed in")
                }
            
        }
    }
}

struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView()
    }
}
