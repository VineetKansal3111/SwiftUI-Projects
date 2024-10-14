//
//  AnimationsDemo.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 09/10/24.
//

import SwiftUI

struct AnimationsDemo: View {
    @State var isAnimated : Bool = false;
    var body: some View {
        VStack{
            Button("Button"){
              //  withAnimation(Animation.default.delay(2.0))
                withAnimation(Animation.default.repeatCount(10,autoreverses: true)){
                 // .repeatforever(autoverses : true)
                
                    isAnimated.toggle()
                }
            }
            Spacer()
            RoundedRectangle(cornerRadius: isAnimated ? 25: 50)
                .fill(isAnimated ? Color.green : Color.pink)
                .frame(width: isAnimated ? 300 :100,height:isAnimated ? 300 :100)
                .rotationEffect(Angle(degrees: isAnimated ? 0: 360))
                .offset(y:isAnimated ? 0 : 300)
            Spacer()
        }
    }
}

struct AnimationsDemo_Previews: PreviewProvider {
    static var previews: some View {
        AnimationsDemo()
    }
}
