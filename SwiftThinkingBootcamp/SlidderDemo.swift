//
//  SlidderDemo.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 11/10/24.
//

import SwiftUI

struct SlidderDemo: View {
    @State var sliderValue : Double = 3
    @State var color : Color = .red
    var body: some View {
        VStack{
            Text("Rating:")
            Text(String(format: "%.2f", sliderValue))
                .foregroundColor(color)
//            Slider(value: $sliderValue, in: 0...100,step: 1.0)
//                .accentColor(.pink)
         Slider(value:$sliderValue,
                in: 1...5,
                step: 1.0,
                onEditingChanged: {(_) in
             color = .green
         },
                minimumValueLabel:Text("1") ,
                maximumValueLabel:Text("5"),
                label: {
             Text("Title")
         }
         )
        }
    }
}

struct SlidderDemo_Previews: PreviewProvider {
    static var previews: some View {
        SlidderDemo()
    }
}
