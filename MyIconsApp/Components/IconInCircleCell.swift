//
//  IconInCircleCell.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 22/11/24.
//

import SwiftUI

struct IconInCircleCell: View {
    var onTap: ()->()
    var iconName: String
    var body: some View {
        Button(action: {
            onTap()
        }, label: {
        Circle()
            .stroke(Color.white,lineWidth: 2)
            .frame(width: 53,height: 53)
            .overlay(
        Image(systemName: iconName)
            .resizable()
            .foregroundColor(.white)
            .frame(maxWidth:20,maxHeight: 20)
            )
        })
    }
}

struct IconInCircleCell_Previews: PreviewProvider {
    static var previews: some View {
        IconInCircleCell(onTap: {},iconName: "bag")
    }
}
