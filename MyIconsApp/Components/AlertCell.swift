////
////  AlertCell.swift
////  SwiftThinkingBootcamp
////
////  Created by IOS on 26/11/24.
////
//
//import SwiftUI
//
//struct FilterInfo:Identifiable,Equatable{
//    var id = UUID().uuidString
//    var title: String
//    var isSelected: Bool
//
//    static var array : [FilterInfo] = [
//        FilterInfo(title: "My Favourites", isSelected: false),
//        FilterInfo(title: "Low To High Level", isSelected: false),
//        FilterInfo(title: "High To Low Level", isSelected: false),
//        FilterInfo(title: "For Rent", isSelected: false),
//        FilterInfo(title: "On Sale", isSelected: false),
//        FilterInfo(title: "By Gender", isSelected: false),
//        FilterInfo(title: "By Accent", isSelected: false),
//        FilterInfo(title: "By Language", isSelected: false)
//    ]
//}
//
//struct AlertCell: View {
//    @State var isSelected: Bool
//    @StateObject var viewModel = MyIconsViewModel()
//    var columns =
//    Array(repeating: GridItem(.flexible()), count: 2)
//    var onTap: ()->()
//
//
//    var body: some View {
//        VStack{
//            HStack{
//                Spacer()
//                Text("Filter")
//                    .font(.system(size: 25,weight: .bold))
//                    .frame(maxWidth: .infinity)
//
//                Button(action: {
//                    onTap()
//                }, label: {
//                    Image(systemName: "xmark.circle")
//                        .font(.system(size: 30))
//                        .frame(maxWidth: .infinity,alignment: .trailing)
//                })
//            }
//            .foregroundColor(.white)
//            .padding()
//            LazyVGrid(columns: columns,spacing: 10){
//                ForEach(FilterInfo.array){ filter in
//                    HStack{
//                        Image(systemName: viewModel.selectedFilter.contains(filter) ? "rectangle.fill" : "rectangle")
//                            .onTapGesture{
//                                viewModel.addGenre(genre: filter)
//                                print(viewModel.addGenre)
//                                print(viewModel.selectedFilter)
//                            }
//                        Text(filter.title)
//                            .font(.system(size: 16))
//                    }
//                    .foregroundColor(.white)
//                }
//                .frame(maxWidth: .infinity,alignment: .leading)
//            }
//            .padding()
//
//            HStack{
//                AlertCellButtons(title: "CONFIRM", bgColor: .purple,onTap: {
//                    for sf in viewModel.selectedFilter {
//                        if  sf.title == "My Favourites" {
//                            let filteredFavorites = viewModel.dialogueCellArray.filter { $0.isFavourite }
//                        }
//                        print(sf.title)
//                    }
//                })
//                AlertCellButtons(title: "RESET", bgColor: .gray,onTap: {
//                    viewModel.selectedFilter.removeAll()
//                })
//            }
//            .padding()
//            .frame(maxWidth: .infinity,alignment: .center)
//
//        }
//        .padding()
//        .background(Color.black)
//        .cornerRadius(30)
//        .overlay(
//            RoundedRectangle(cornerRadius: 30)
//                .stroke(Color.white,lineWidth: 1.5))
//    }
//}
//
//struct AlertCell_Previews: PreviewProvider {
//    static var previews: some View {
//        AlertCell(isSelected: false,onTap: {} )
//    }
//}
