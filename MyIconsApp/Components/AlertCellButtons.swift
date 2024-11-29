//
//  AlertCellButtons.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 26/11/24.
//

import SwiftUI

struct AlertCellButtons: View {
    var title: String
    var bgColor: Color
    var onTap: ()->()
    var body: some View {
        
        Button(
            action: {
                onTap()
            }, label: {
                Text(title)
                    .font(.system(size: 18))
                    .foregroundColor(.white)
                    .padding()
                    .background(bgColor)
            })
    }
}

struct AlertCellButtons_Previews: PreviewProvider {
    static var previews: some View {
        AlertCellButtons( title: "Confirm", bgColor:.purple,onTap: {})
    }
}
