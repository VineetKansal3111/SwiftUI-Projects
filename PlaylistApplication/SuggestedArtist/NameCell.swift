//
//  NameCell.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 21/11/24.
//

import SwiftUI

struct NameCell: View {
    var name: String
    var body: some View {
                HStack{
                    Image("bgGradient")
                        .resizable()
                        .cornerRadius(10)
                        .frame(maxWidth: 60,maxHeight:70)
                    
                    VStack(alignment: .leading){
                        Text(name)
                            .font(.system(size: 20))
                            .bold()
                            .foregroundColor(.white)
                        HStack{
                            ThreeButtonsView { buttonTitle in
                                print("\(buttonTitle) tapped for \(name)")
                            }
                        }
                    }
                }
                .padding()
                .frame(maxWidth: .infinity,alignment: .leading)
                .background(Color.black)
                .cornerRadius(10)
    }
}

struct NameCell_Previews: PreviewProvider {
    static var previews: some View {
        NameCell(name: "Arena")
    }
}
