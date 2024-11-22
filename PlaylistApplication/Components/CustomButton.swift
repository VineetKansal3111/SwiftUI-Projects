//
//  CustomButton.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 28/10/24.
//

import SwiftUI

struct CustomButton: View {
    
    var width: CGFloat
    var height: CGFloat
    var buttonColor : Color
    var title: String
    
    
    
    var body: some View {
       
            Text(title)
                .frame(maxWidth: width, maxHeight: height)
                .foregroundColor(.white)
                .background(buttonColor)
                .cornerRadius(10)
                .shadow(radius: 5)
                .bold()
        
        
    }
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton(width: 100, height: 50,buttonColor:Color.pink, title: "Custom")
    }
}
