//
//  CustomText.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 02/11/24.
//

import SwiftUI

struct CustomText: View {
    
    var TextColor: Color
    var title: String
    var height: CGFloat
    
    var body: some View {
        Text(title)
            .foregroundColor(TextColor)
            .font(.system(size: height))
            .bold()
    }
}

struct CustomText_Previews: PreviewProvider {
    static var previews: some View {
        CustomText(TextColor: .blue, title: "CustomText", height: 30)
    }
}
