//
//  MyIconsView.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 22/11/24.
//

import SwiftUI

struct MyCatsView: View {
    
    @StateObject var viewModel = MyCatViewModel()
    
    var body: some View {
        ZStack{
            ScrollView(showsIndicators: false){
                VStack{
                    CoinCell(isSelectedCoin: false)
                        .padding(.top,40)
                    Text("Select an Cat to chat")
                        .font(.system(size: 18,weight: .semibold))
                        .foregroundColor(.white)
                        .padding(.vertical,10)
                    if viewModel.searchSelected == true {
                        CatTextField(textFieldText: $viewModel.textFieldtext)
                            .padding(.bottom)
                    }
                    else{
                        HStack(spacing: 10){
                            IconInCircleCell(onTap: {}, iconName: "bag")
                            IconInCircleCell(onTap: {}, iconName: "arrow.down")
                            IconInCircleCell(onTap: {
                                viewModel.showAlert = true
                            }, iconName:"slider.vertical.3")
                            IconInCircleCell(onTap: {
                                viewModel.searchSelected = true
                            }, iconName: "magnifyingglass")
                        } .padding(.bottom)
                    }
                    
                    LazyVGrid(columns: viewModel.columns, spacing: 10) {
                        ForEach(viewModel.filteredNames) { item in
                            if let index = viewModel.dialogueCellArray.firstIndex(where: { $0.id == item.id }) {
                                DialogueCell(object: viewModel.dialogueCellArray[index], onFavoriteTap: {
                                    viewModel.dialogueCellArray[index].isFavourite.toggle()
                                })
                            }
                        }
                        Spacer()
                    }
                }
            }
            if(viewModel.showAlert == true) {
                VStack{
                    Text("Filter")
                        .font(.system(size: 25,weight: .bold))
                        .frame(maxWidth: .infinity,alignment:.center)
                        .foregroundColor(.white)
                        .padding()
                        .overlay(
                            Button(action: {
                                viewModel.showAlert = false
                            }, label: {
                                Image(systemName: "xmark.circle")
                                    .font(.system(size: 30))
                                    .frame(maxWidth: .infinity,alignment: .trailing)
                            })
                        )
                    
                        .foregroundColor(.white)
                        .padding()
                    LazyVGrid(columns: viewModel.columns,spacing: 10) {
                        ForEach(FilterInfo.array){ filter in
                            HStack{
                                Image(systemName: viewModel.selectedFilter.contains(filter) ? "rectangle.fill" : "rectangle")
                                    .onTapGesture{
                                        viewModel.addGenre(Filter: filter)
                                        print(viewModel.addGenre)
                                        print(viewModel.selectedFilter)
                                    }
                                Text(filter.title)
                                    .font(.system(size: 16))
                            }
                            .foregroundColor(.white)
                        }
                        .frame(maxWidth: .infinity,alignment: .leading)
                    }
                    .padding()
                    
                    HStack{
                        AlertCellButtons(title: "CONFIRM", bgColor: .purple,onTap: {
                            for sf in viewModel.selectedFilter {
                                if  sf.title == "My Favourites" {
                                    let filteredFavorites = viewModel.dialogueCellArray.filter { $0.isFavourite }
                                }
                                print(sf.title)
                                viewModel.showAlert = false
                            }
                        })
                        AlertCellButtons(title: "RESET", bgColor: .gray,onTap: {
                            viewModel.selectedFilter.removeAll()
                        })
                    }
                    .padding()
                    .frame(maxWidth: .infinity,alignment: .center)
                }
                .padding()
                .background(Color.black)
                .cornerRadius(30)
                .overlay(
                    RoundedRectangle(cornerRadius: 30)
                        .stroke(Color.white,lineWidth: 1.5))
                .padding()
                .frame(maxHeight: .infinity)
                .background(.opacity(0.7))
            }
        }
        .background(Image("bgGradientImg"))
        .edgesIgnoringSafeArea(.all)
        
        .onChange(of: viewModel.dialogueCellArray, perform: { array in
            print(array)
        })
    }
}

struct MyIconsView_Previews: PreviewProvider {
    static var previews: some View {
        MyCatsView()
    }
}
