//
//  titleButton.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 21/11/24.
//

import SwiftUI

struct ThreeButtonsView: View {
    var title: [String] = ["Button 1","Button 2","Button 3"]
    var buttonTapped: (String) -> Void
    var body: some View {
        ForEach(title,id:\.self){ button in
            HStack {
                Button(action: {
                    buttonTapped(button)
                }, label: {
                    Text(button)
                        .foregroundColor(.white)
                        .padding(10)
                        .background(Color.blue)
                        .cornerRadius(10)
                })
            }
        }
    }
}

struct ThreeButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        ThreeButtonsView(buttonTapped: {_ in })
    }
}
