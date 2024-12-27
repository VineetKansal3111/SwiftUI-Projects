//
//  MyIkonMarketView.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 26/12/24.
//

import SwiftUI

struct MyIkonMarketView: View {
    var columns = Array(repeating: GridItem(.flexible(),spacing: 10), count: 2)
    
    var body: some View {
        VStack(spacing:25){
            
            headerView
            
            Text("Buy or rent an Ikon")
                .foregroundColor(.white)
                .font(.system(size: 16,weight:.regular))
            
            HStack(spacing: 10){
                IconInCircleCell(onTap: {},iconName: "bag")
                IconInCircleCell(onTap: {},iconName: "arrow.down")
                IconInCircleCell(onTap: {},iconName:"slider.vertical.3")
                IconInCircleCell(onTap: {},iconName: "magnifyingglass")
            }
            
            ScrollView(showsIndicators: false){
                LazyVGrid(columns: columns, spacing: 10){
                    ForEach(0..<8, id: \.self) { _ in
                        MyIkonCell()
                    }
                }
            }
            
        }
        .background(
            Image("Gradient_Market")
                .edgesIgnoringSafeArea(.all)
        )
        .padding(.horizontal,20)
    }
    
    
    //MARK: headerView
    var headerView: some View {
        HStack{
            Button(action: {
                print("back button tapped")
            }, label: {
                Image("Back")
                    .padding(.leading)
            })
            
            Spacer()
            
            HStack{
                HStack{
                    Image("starImg")
                    
                    Text("100")
                        .font(.system(size: 12, weight: .medium))
                    
                    Circle()
                        .foregroundColor(.orange)
                        .frame(width: 20,height: 20)
                        .overlay(
                            Image(systemName: "arrow.up.forward")
                                .resizable()
                                .foregroundColor(.white)
                                .frame(width:10,height: 8)
                        )
                    
                }
                .padding(6)
                .background(Color.white)
                .clipShape(Capsule())
                
                Image("ProfileImg")
                    .resizable()
                    .frame(width:30, height: 30)
            }
            
        }
        .overlay(
            Text("Market")
                .foregroundColor(.white)
                .font(.system(size: 30, weight: .semibold))
        )
    }
    
}

struct MyIkonMarketView_Previews: PreviewProvider {
    static var previews: some View {
        MyIkonMarketView()
    }
}
