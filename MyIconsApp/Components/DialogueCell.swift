//
//  DialogueCell.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 25/11/24.
//

import SwiftUI

struct DialogueCell: View {
    @State var object: CatsInfo
    var onFavoriteTap: ()->()
    
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 25)
                .frame(width: 184, height: 230)
                .overlay(
                    VStack {
                        Image(object.artWorks)
                            .resizable()
                            .frame(width: 194, height: 150)
                            .overlay(
                                HStack(spacing: 115) {
                                    Circle()
                                        .stroke(Color.white,lineWidth:1.5)
                                        .overlay(
                                            Image(systemName: object.isFavourite ? "heart.fill" : "heart")
                                                .resizable()
                                                .foregroundColor(object.isFavourite ? .pink : .white)
                                                .frame(width: 15.5,height:13)
                                                .onTapGesture {
                                                    onFavoriteTap()
                                                    object.isFavourite.toggle()
                                                }
                                        )
                                        .frame(maxWidth: 30, maxHeight: 30)
                                    
                                    Circle()
                                        .foregroundColor(Color.white)
                                        .overlay(
                                            Image(systemName:"message.fill")
                                                .resizable()
                                                .foregroundColor(.black)
                                                .frame(width: 15.5,height: 13)
                                        )
                                        .frame(maxWidth: 30, maxHeight: 30)
                                }
                                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                            )
                        
                        Text(object.artWorkNames)
                            .font(.system(size: 16, weight: .semibold))
                            .foregroundColor(Color("app9B9B9B"))
                            .padding(.bottom, 4)
                        
                        HStack(spacing:10){
                            VStack(alignment: .leading){
                                Text("LEVEL")
                                Text("Dialogue")
                            }
                            .font(.system(size: 10,weight: .semibold))
                            .foregroundColor(.white)
                            
                            VStack(alignment: .leading){
                                Text(object.level)
                                Text(object.City)
                            }
                            .font(.system(size: 10,weight: .semibold))
                            .foregroundColor(Color("appE4FF1A"))
                        }
                    }
                )
        }
        .overlay(RoundedRectangle(cornerRadius: 25)
            .stroke(Color.white,lineWidth: 1))
    }
}

//struct DialogueCell_Previews: PreviewProvider {
//    static var previews: some View {
//        DialogueCell(object: dialogueCellArray[index], onFavoriteTap: {})
//
//    }
//}
