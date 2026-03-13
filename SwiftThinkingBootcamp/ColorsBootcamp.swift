//
//  ColorsBootcamp.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 04/10/24.
//

import SwiftUI

struct ColorsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(
               // Color.primary
               // Color(
                //    UIColor.secondarySystemBackground
             //  )
              //  Color("Color")
                Color(#colorLiteral(red:0,green:89,blue:34,alpha:1)))
            .frame(width:100, height:100)
            .shadow(
                color: Color("Color")
                    .opacity(10), radius: 10,x:10,y: 40)
    }
}

struct ColorsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorsBootcamp()
    }
}
