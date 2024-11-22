//
//  PAIButton.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 22/11/24.
//

import SwiftUI

struct PAIButton: View {
    var body: some View {
        Button(action: {}, label: {
        Text("Next")
                .foregroundColor(.white)
                .font(.system(size: 20))
                .bold()
            .frame(maxWidth: .infinity)
            .frame(height: 60)
            .background(Color("appEC008C"))
            .cornerRadius(15)
            .overlay(
            RoundedRectangle(cornerRadius: 15)
                .stroke(Color("appAA076B"),lineWidth: 5))
        })
    }
}

struct PAIButton_Previews: PreviewProvider {
    static var previews: some View {
        PAIButton()
    }
}
