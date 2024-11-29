//
//  CreateListenMusic.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 21/11/24.
//

import SwiftUI

struct CreateListenMusicView: View {
    @StateObject private var viewModel = CreateListenMusicViewModel()
    
    var body: some View {
        VStack(spacing:0){
            IconTitleView()
            VStack(alignment: .leading, spacing:20){
                Text("How are you feeling?")
                    .font(.system(size: 25))
                    .bold()
                    .foregroundColor(.white)
                    .padding(.top)
                LazyVGrid(columns: viewModel.columns, spacing: 20) {
                    ForEach(viewModel.emojis,id:\.self){ emoji in
                        EmojiCell(images: emoji
                                  ,isSelected: viewModel.selectedMood == emoji)
                        .onTapGesture{
                            viewModel.selectedMood = emoji
                        }
                    }
                }
                Text("What's affecting your mood?")
                    .font(.system(size: 25))
                    .bold()
                    .foregroundColor(.white)
                    .padding(.top,20)
                    .padding(.bottom,3)
                ScrollView(.horizontal){
                    LazyVGrid(columns: viewModel.playlistColumns,spacing: 10){
                        ForEach(viewModel.playlistTitle,id: \.self){ titles in
                            FerrryCell(
                                title: titles, isSelected: viewModel.selectedPlaylist == titles)
                            .onTapGesture{
                                viewModel.selectedPlaylist = titles
                            }
                        }
                    }
                }
                Spacer()
            }
            .padding(.horizontal)
            .frame(maxHeight: .infinity,alignment: .top)
            .background(Color.black)
            PAIButton()
                .padding()
                .background(Color("app27283F"))
        }
    }
}
struct CreateListenMusic_Previews: PreviewProvider {
    static var previews: some View {
        CreateListenMusicView()
    }
}
