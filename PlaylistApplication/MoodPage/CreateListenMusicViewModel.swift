//
//  CreateListenMusicViewModel.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 22/11/24.
//

import SwiftUI

class CreateListenMusicViewModel: ObservableObject{
   @Published var emojis: [String] = ["cry","sad","blessed","normal","happy",
                            "funny"]
    @Published var playlistTitle: [String] = [
        "Ferry trip",
        "I am lonely my friends",
        "Magazine reading pleasure",
        "Listen to the rhythm of the street",
        "Songs that are good for my mood",
        "To those who cannot sit still",
        "Songs that are not about love",
        "Soundtrack",
        "It's always acoustic around here",
        "Joyful Life",
        "Traffic stops, I don’t stop",
        "I'm like this and like that",
        "Daytime glory",
        "Sunset"
    ]
    @Published var selectedMood: String? = nil
    
    @Published var selectedPlaylist: String? = nil
    
    @Published  var columns =
        Array(repeating: GridItem(.flexible()), count: 3)
    
    @Published var playlistColumns = Array(
        repeating: GridItem(.fixed(150)), count: 7
    )
}

