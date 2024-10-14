//
//  AnimationCurvesDemo.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 09/10/24.
//

import SwiftUI

struct AnimationCurvesDemo: View {
    @State var isAnimating : Bool = false;
    var body: some View {
        VStack{
            Button("Button"){
                isAnimating.toggle()
            }
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 50 :350 , height: 100)
                .animation(Animation.linear(duration: 10), value: isAnimating)
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 50 :350 , height: 100)
                .animation(Animation.easeIn(duration: 10), value: isAnimating)
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 50 :350 , height: 100)
                .animation(Animation.easeOut(duration: 10), value: isAnimating)
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 50 :350 , height: 100)
                .animation(Animation.easeInOut(duration: 10), value: isAnimating)
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 50 :350 , height: 100)
                .animation(Animation.spring(
                    response: 1.0,
                    dampingFraction: 0.2,
                    blendDuration: 1.0
                 ),value: isAnimating)
        }
    }
}

struct AnimationCurvesDemo_Previews: PreviewProvider {
    static var previews: some View {
        AnimationCurvesDemo()
    }
}
