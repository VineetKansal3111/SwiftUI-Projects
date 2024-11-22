//
//  FerrryCell.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 22/11/24.
//

import SwiftUI

struct FerrryCell: View {
    var title: String
    var isSelected: Bool
    
    var body: some View {
        Text(title)
            .foregroundColor(.white)
            .multilineTextAlignment(.center)
            .bold()
            .frame(width: 150,height: 100)
            .background(Image("flower")
                .frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .bottomLeading))
            .background((isSelected ?
                         LinearGradient(
                            colors: [Color("app191A32"), Color("app4C4F98")],
                            startPoint: .top,
                            endPoint: .bottom) :
                            LinearGradient(
                                colors: [Color("app1F203F")],
                                startPoint: .trailing,
                                endPoint: .leading))
            )
            .cornerRadius(10)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(isSelected ? Color.white : Color("app1F203F"),lineWidth: 2)
            )
    }
}

struct FerrryCell_Previews: PreviewProvider {
    static var previews: some View {
        FerrryCell(title:"Ferry trip",isSelected: true)
    }
}
