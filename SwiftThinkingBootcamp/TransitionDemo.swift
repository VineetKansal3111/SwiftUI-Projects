//
//  TransitionDemo.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 09/10/24.
//

import SwiftUI

struct TransitionDemo: View {
    @State var showView : Bool = false
    var body: some View {
        ZStack(alignment:.bottom){
            VStack{
                Button("Button"){
                    showView.toggle()
                }
                Spacer()
            }
            if(showView){
                RoundedRectangle(cornerRadius: 30)
                    .frame(height:UIScreen.main.bounds.height * 0.5)
                    .transition(.move(edge: .leading))
                    .animation(.easeInOut,value:showView)
            }
        }
    }
}

struct TransitionDemo_Previews: PreviewProvider {
    static var previews: some View {
        TransitionDemo()
    }
}
