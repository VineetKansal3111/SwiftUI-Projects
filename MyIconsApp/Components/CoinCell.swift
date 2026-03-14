//
//  CoinCell.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 22/11/24.
//

import SwiftUI

struct CoinCell: View {
   @State var isSelectedCoin: Bool
    
    var body: some View {
        ZStack{
            HStack{
                Image("Vector")
                if(isSelectedCoin == false){
                    HStack{
                        Image("starImg")
                        Text("100")
                        Image("arrowRight")
                            .onTapGesture {
                                isSelectedCoin = true
                            }
                    }
                    .padding(2)
                    .background(Color.white)
                    .cornerRadius(20)
                    .frame(maxWidth:.infinity,alignment: .trailing)
                }
                Spacer()
                Image("Subtract")
            }
            .padding()
            
            if(isSelectedCoin == false){
                Text("My Cats")
                    .foregroundColor(.white)
                    .font(.system(size: 39,weight: .semibold))
                    //.frame(maxWidth: .infinity,alignment: .center)
            }
            else {
                HStack{
                    Image("starImg")
                    Text("100/100")
                    Image("starImg2")
                    Text("100")
                    Image("starImg2")
                    Text("200")
                    Image(systemName: "xmark")
                        .onTapGesture{
                            isSelectedCoin = false
                        }
                }
                .padding(2)
                .background(Color.white)
                .cornerRadius(20)
                .frame(maxWidth:.infinity,alignment: .trailing)
                .padding(.horizontal,50)
            }
        }
    }
}

struct CoinCell_Previews: PreviewProvider {
    static var previews: some View {
        CoinCell(isSelectedCoin: false)
            .preferredColorScheme(.dark)
    }
}
