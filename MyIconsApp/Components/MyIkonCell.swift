//
//  MyIkonCell.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 26/12/24.
//

import SwiftUI

struct MyIkonCell: View {
    @State var isHeartFill: Bool = false
    
    var body: some View {
        VStack(spacing:12){
            
            header
            
            iconInfo
            
            starValue
            
        }
        .frame(maxWidth:.infinity,maxHeight: 337)
        .background(Color("app31312D"))
        .clipShape(RoundedRectangle(cornerRadius: 15))
        .overlay(RoundedRectangle(cornerRadius: 15)
            .stroke(.white,lineWidth: 1.5))
    }
    
    var header: some View {
        Text("FOR RENT")
            .font(.system(size:12,weight: .medium))
            .background(Color.white)
            .frame(maxWidth: .infinity, alignment: .center)
            .overlay(
                Image(systemName: isHeartFill ? "heart.fill" : "heart")
                    .foregroundColor(Color("appC13584"))
                    .onTapGesture {
                        isHeartFill.toggle()
                    }
                    .padding(7)
                    .overlay(
                        Circle()
                            .stroke(.white, lineWidth: 2)
                    )
                    .padding(.top)
                    .frame(maxWidth: .infinity, alignment: .leading)
            )
            .padding(.top)
            .padding(.leading)
    }
    
    var iconInfo: some View {
        VStack(spacing:8){
            Image("artWork1")
                .resizable()
                .frame(maxWidth:223, maxHeight: 140)
            
            Text("IKON NAME")
                .foregroundColor(.white)
                .font(.system(size:17))
            
            Text("OWNER'S NAME")
                .foregroundColor(.gray)
                .font(.system(size:10,weight: .semibold))
            
            VStack(spacing: 4){
                HStack(spacing: 2){
                    textLabelView(title: "LV. 23", color: Color.purple)
                    textLabelView(title: "EN", color: Color.orange)
                }
                
                HStack(spacing: 2){
                    textLabelView(title: "AMERICAN", color: Color.green)
                    textLabelView(title: "SHE/HER", color: Color.yellow)
                }
            }
            
        }
        .frame(maxHeight: .infinity)
    }
    
    var starValue: some View {
        HStack{
            Image("starImg")
                .renderingMode(.template)
                .resizable()
                .scaledToFit()
                .frame(height: 19)
                .foregroundColor(.white)
            
            Text("250")
                .foregroundColor(.white)
                .font(.system(size:20,weight:.semibold))
        }
        .frame(maxWidth:.infinity)
        .padding(.vertical)
        .background(Color("appA687E8"))
    }
    
    func textLabelView(title:String ,color: Color ) -> some View{
        Text(title)
            .font(.system(size:10,weight: .semibold))
            .frame(height: 18)
            .padding(.horizontal)
            .background(color)
            .clipShape(Capsule())
    }
}

struct MyIkonCell_Previews: PreviewProvider {
    static var previews: some View {
        MyIkonCell()
    }
}
