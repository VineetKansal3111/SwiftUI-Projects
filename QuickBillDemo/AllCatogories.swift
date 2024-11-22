//
//  AllCatogories.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 16/10/24.
//

import SwiftUI
struct CatagoryInfoModel: Codable,Hashable{
    let catagoryName: String
    let catagoryImg: String
}

 struct AllCatogories: View {
        @State var catagories : [CatagoryInfoModel]
        var body: some View {
            HStack {
                ForEach(catagories, id: \.self) { catagory in
                    VStack {
                        Image(catagory.catagoryImg)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 50, height: 50)
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.gray, lineWidth: 1))
                        Text(catagory.catagoryName)
                            .font(.headline)
                    }
                    .padding() // Add some padding around each category
                }
            }
        }
    }
//    struct AllCatogories_Previews: PreviewProvider {
//        static var previews: some View {
//         //   AllCatogories()
//        }
//    }

