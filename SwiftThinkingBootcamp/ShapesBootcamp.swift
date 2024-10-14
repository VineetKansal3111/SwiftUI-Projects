//
//  ShapesBootcamp.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 04/10/24.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
       // Circle()
        //Ellipse()
        //Capsule(style:.circular)
       // Rectangle()
        RoundedRectangle(cornerRadius: 30)
            //.fill(Color.gray)
           // .foregroundColor(Color.pink)
//            .stroke(Color.red,
//                    style:StrokeStyle(
//                        lineWidth: 10,
//                        lineCap:.butt,
//                        dash: [10]
//                    ))
            .trim(from: 0.1,to: 1.0)
            .stroke(Color.purple,lineWidth:40)
            .frame(width: 200,height: 100)
    }
}

struct ShapesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ShapesBootcamp()
    }
}
