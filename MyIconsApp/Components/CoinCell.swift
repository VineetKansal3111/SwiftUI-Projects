//
//  CoinCell.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 22/11/24.
//

import SwiftUI

struct CoinCell: View {
    var body: some View {
        HStack(){
            Image("Vector")
           Spacer()
            Text("My Ikons")
                .foregroundColor(.white)
                .font(.system(size: 39,weight: .semibold))
                
           Spacer()
            HStack{
                Image("starImg")
                Text("100")
                Image("arrowRight")
            }
            .padding(5)
            .background(Color.white)
            .cornerRadius(20)
            Image("Subtract")
        }
        .padding()
    }
}

struct CoinCell_Previews: PreviewProvider {
    static var previews: some View {
        CoinCell()
    }
}
