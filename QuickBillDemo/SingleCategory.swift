////
////  SingleCategory.swift
////  SwiftThinkingBootcamp
////
////  Created by IOS on 16/10/24.
////
//
//import SwiftUI
//struct SingleCategoryModel: Identifiable{
//    let id : String = UUID().uuidString
//    let catagoryImg : String
//    let price : String
//    let title : String
//    let subTitle : String
//}
//
//
//struct SingleCategory: View {
//
//    @StateObject var singleCatagoryViewModel: QuickbillViewModel =  QuickbillViewModel ()
//    var body: some View {
//        VStack{
//            ForEach(singleCatagoryViewModel.catagoryArray){ category in
//                VStack{
//                    HStack{
//                        Image(category.catagoryImg)
//                            .resizable()
//                            .aspectRatio(contentMode: .fill)
//                            .frame(width: 50, height: 50)
//                            .clipShape(Circle())
//                            .overlay(Circle().stroke(Color.gray, lineWidth: 1))
//                        VStack{
//                            Text(category.price)
//                            HStack{
//                                Image(systemName: "minus")
//                                    .foregroundColor(.white)
//                                    .bold()
//                                    .frame(maxWidth: 20,maxHeight:20)
//                                    .background(Color.pink)
//                                    .cornerRadius(5)
//                                Text("0")
//                                Image(systemName: "plus")
//                                    .foregroundColor(.white)
//                                    .bold()
//                                    .frame(maxWidth: 20,maxHeight:20)
//                                    .background(Color.pink)
//                                    .cornerRadius(5)
//                            }
//                        }
//
//                    }
//                    Text(category.catagoryImg)
//                        .foregroundColor(Color.white)
//                        .font(.system(size: 15))
//                    Text(category.subTitle)
//                        .foregroundColor(Color.white)
//                        .bold()
//                }
//                .padding()
//                .background(Color.gray)
//                .cornerRadius(15)
//            }}
//    }
//}
//
//struct SingleCategory_Previews: PreviewProvider {
//    static var previews: some View {
//        SingleCategory()
//    }
//}
