//
//  GradientBootcamp.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 05/10/24.
//

import SwiftUI

struct GradientBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(
                //                LinearGradient(
                //                gradient: Gradient(
                //                    colors:[Color.red,Color.blue,Color.pink,Color.purple,Color.clear])
                //                ,startPoint: .trailing, endPoint: .leading))
                
                
                //                RadialGradient(
                //                    gradient:Gradient(
                //                        colors: [Color.pink,Color.blue]),
                //                               center:.leading,
                //                               startRadius: 5,
                //                               endRadius: 400)
                AngularGradient(
                    gradient:Gradient(
                        colors: [Color.pink,Color.blue]),
                    center: .leading,
                    angle:.degrees(90)
            ))
            .frame(width: 200,height: 200)
        
    }
}

struct GradientBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GradientBootcamp()
    }
}
