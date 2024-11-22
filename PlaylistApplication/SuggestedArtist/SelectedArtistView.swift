//
//  SelectedArtistView.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 19/11/24.
//

import SwiftUI

struct SelectedArtistView: View {
    @StateObject private var viewModel = SelectedArtistViewModel()
    @State var isSelected: Bool = false
    
    var body: some View{
        VStack{
            if self.isSelected == false {
                FirstView
            }
            else{
                SecondView
            }}
        
    }
    
    var SecondView: some View {
        VStack(spacing: 50){
            HStack{
                TextFieldView(textFieldtext: $viewModel.textFieldtext)
                    
                Button(action: {
                    isSelected = false
                }, label: {
                    Text("Cancel")
                        .foregroundColor(.white)
                        .background(Color.black)
                })
            }
            ScrollView{
                ForEach(viewModel.filteredNames,id: \.self){ name in
                    NameCell(name: name)
                }
            }
        }
        .padding()
        .frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .top)
        .background(Color.black)
        
    }
    
    var FirstView: some View {
        VStack(spacing:30){
            HStack{
                Image(systemName: "chevron.backward.square")
                Spacer()
                Text("Suggested Artists")
                    .bold()
                
                Spacer()
                
            }
            .foregroundColor(.white)
            .font(.system(size: 20))
            
            TextFieldView( textFieldtext: $viewModel.textFieldtext)
                .overlay(Color.black.opacity(0.01)
                    .onTapGesture {
                        isSelected = true
                    })
            ScrollView{
                ForEach(viewModel.filteredNames,id: \.self){ name in
                    NameCell(name: name)
                }
            }
            
        }
        .padding()
        .frame(maxHeight: .infinity,alignment: .top)
        .background(Color.black)
    }
}

struct SelectedArtistView_Previews: PreviewProvider {
    static var previews: some View {
        SelectedArtistView()
    }
}


