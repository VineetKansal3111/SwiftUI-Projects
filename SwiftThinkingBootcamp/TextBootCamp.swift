//
//  TextBootCamp.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 04/10/24.
//

import SwiftUI

struct TextBootCamp: View {
    var body: some View {
        Text("Learn text. Hi this is day one of learning swift ui".capitalized)
//            .font(.title)
//            .bold()
//            .underline()
//            .strikethrough(true,color: Color.red)
        
        // 2nd way to write ==
        
        
//            .font(.system(
//                size:20,
//                weight:.semibold,
//                design:.monospaced
//                         ))
           // .baselineOffset(80)
            .multilineTextAlignment(.center)
            .foregroundColor(Color.red)
            .frame(width: 300,height: 200,alignment:.center)
            .minimumScaleFactor(0.1)
  }
}

struct TextBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        TextBootCamp()
    }
}
