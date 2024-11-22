//
//  EmojiCell.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 21/11/24.
//

import SwiftUI

struct EmojiCell: View {
    var images: String
    var isSelected: Bool
    
    var body: some View{
        Image(images)
            .padding(.horizontal,40)
            .padding(.vertical,30)
            .background(isSelected ?
                        LinearGradient(
                            colors: [Color("app191A32"), Color("app4C4F98")],
                            startPoint: .top,
                            endPoint: .bottom) :
                            LinearGradient(
                                colors: [Color("app191A32")],
                                startPoint: .trailing,
                                endPoint: .leading))
            .cornerRadius(10)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(isSelected ? Color.white : Color("app191A32"),lineWidth: 2)
            )
    }
}


struct EmojiCell_Previews: PreviewProvider {
    static var previews: some View {
        EmojiCell(images: "xmark",isSelected: false)
    }
}
