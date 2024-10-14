//
//  ColorPickerDemo.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 11/10/24.
//

import SwiftUI

struct ColorPickerDemo: View {
    @State var backgroundColor : Color = .green
    var body: some View {
        ZStack{
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            ColorPicker("Select a Color",selection: $backgroundColor, supportsOpacity:true
            )
            .padding()
            .background(Color.blue)
            .cornerRadius(10)
            .foregroundColor(.white)
            .font(.largeTitle)
            .padding()
        }
        
    }
}

struct ColorPickerDemo_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerDemo()
    }
}
