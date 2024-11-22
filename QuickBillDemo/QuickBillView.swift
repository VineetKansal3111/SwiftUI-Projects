////
////  QuickBillDemo.swift
////  SwiftThinkingBootcamp
////
////  Created by IOS on 16/10/24.
////
//
//import SwiftUI
//import Foundation
//
//struct ProductModel: Identifiable {
//    let id: String = UUID().uuidString
//    let productImg: String
//    let price: String
//    let title: String
//    let subTitle: String
//}
//
//class QuickbillViewModel : ObservableObject{
//    @Published var catagoryArray : [CatagoryInfoModel] = [
//            CatagoryInfoModel(catagoryName: "Animals", catagoryImg: "Biscuits"),
//            CatagoryInfoModel(catagoryName: "Technology", catagoryImg: "Biscuits"),
//            CatagoryInfoModel(catagoryName: "Food", catagoryImg: "food.png"),
//            CatagoryInfoModel(catagoryName: "Travel", catagoryImg: "Biscuits")
//        ]
//    let products: [ProductModel] = [
//        ProductModel(productImg: "product1.png", price: "$19.99", title: "Wireless Headphones", subTitle: "High-quality sound with noise cancellation"),
//        ProductModel(productImg: "product2.png", price: "$29.99", title: "Smart Watch", subTitle: "Fitness tracking and notifications"),
//        ProductModel(productImg: "product3.png", price: "$49.99", title: "Portable Charger", subTitle: "Fast charging for all devices"),
//        ProductModel(productImg: "product4.png", price: "$39.99", title: "Bluetooth Speaker", subTitle: "Water-resistant with great sound quality")
//    ]
//}
//struct QuickBillView: View {
//    @State var searchField : String = "";
//    @StateObject var viewModel = QuickbillViewModel()
//    var body: some View {
//
//        VStack{
//            // MARK : NAVBAR
//            HStack(spacing: 10){
//                Image(systemName: "line.3.horizontal")
//                    .font(.title)
//                    .foregroundColor(.white)
//                    .padding()
//                Text("Quick Bill")
//                    .bold()
//                    .font(.system(size: 27))
//                    .foregroundColor(.white)
//                Spacer()
//                Image(systemName: "cart.fill")
//                    .font(.title)
//                    .foregroundColor(.white)
//                    .padding()
//            }
//            .background(Color.pink)
//            // MARK : BUTTON & TEXTFIELD
//            VStack{
//                HStack{
//                    Button(action:{} , label: {
//                        Text("Category")
//                            .font(.system(size:15))
//                            .bold()
//                            .padding(12)
//                            .foregroundColor(.white)
//                            .background(Color.pink)
//                            .cornerRadius(10)
//
//                    })
//                    ZStack{
//                        if searchField.isEmpty {
//                                       Text("Search...")
//                                .bold()
//                                .foregroundColor(.gray)
//
//                                   }
//                        TextField("",text:  $searchField)
//                            .foregroundColor(.gray)
//
//                            .padding(.leading,30)
//                            .padding(10)
//                            .overlay(
//                                Image(systemName: "magnifyingglass")
//                                    .foregroundColor(.white)
//                                    .padding(.leading, 10),
//                                alignment: .leading
//
//                            )
//                            .overlay(
//                            Image(systemName: "xmark")
//                                .foregroundColor(.white)
//                                .padding(.trailing, 10),
//                            alignment: .trailing
//
//                            )
//                            .overlay(
//                                RoundedRectangle(cornerRadius: 10)
//                                    .stroke(Color.gray, lineWidth: 2))
//
//                    }
//                }
//                // MARK : Cotagories
//                AllCatogories(catagories: viewModel.catagoryArray)
//                SingleCategory()
//            }
//            .padding(.horizontal)
//
//            Spacer()
//        } .background(Color.black)
//
//
//
//
//    }
//}
//
//struct QuickBillDemo_Previews: PreviewProvider {
//    static var previews: some View {
//        QuickBillView()
//    }
//}
