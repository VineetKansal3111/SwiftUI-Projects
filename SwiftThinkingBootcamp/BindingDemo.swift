//
//  BindingDemo.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 08/10/24.
//

import SwiftUI

struct BindingDemo: View {
    @State var backgroundColor : Color = .red
    var body: some View {
        ZStack{
            backgroundColor
            BindingDemoHere(backgroundColor : $backgroundColor)
        }
        
    }
}

struct BindingDemo_Previews: PreviewProvider {
    static var previews: some View {
        BindingDemo()
    }
}

struct BindingDemoHere: View {
    //Here is Binding which ask for background color
    @Binding var backgroundColor : Color ;
    var body: some View {
        VStack{
            Button(action:{
                backgroundColor  = .green
            }, label: {
                Text("Button")
            })
        }
    }
}
