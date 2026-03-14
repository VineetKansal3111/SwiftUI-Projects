//
//  TuneAI.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 28/10/24.
//

import SwiftUI

struct TuneAI: View {
    @State private var isActive : Bool = false
    var body: some View {
        if isActive{
            ExperienceFutureMusic()
        }
        else{
            ZStack{
                AngularGradient(
                    gradient:Gradient(
                        colors: [Color.purple,Color.black,Color.blue,]),
                    center: .bottom,
                    angle:.degrees(90))
                TuneAILogoText().onAppear{
                    DispatchQueue.main.asyncAfter(deadline: .now()+3.0){
                        withAnimation{
                            isActive = true}
                    }
                }
            } .edgesIgnoringSafeArea(.all)
        }
    }
}

struct TuneAI_Previews: PreviewProvider {
    static var previews: some View {
        TuneAI()
    }
}
