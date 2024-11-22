//
//  SelectedArtistViewModel.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 21/11/24.
//

import SwiftUI
class SelectedArtistViewModel: ObservableObject {
    
    @Published var textFieldtext = ""
    @Published var names: [String] = ["Ariena Grande","Justin Bieber","Selena Gamez","Bad Bunny"]
    
    var filteredNames: [String] {
        if textFieldtext.isEmpty {
            return names
        } else {
            return names.filter { $0.lowercased().hasPrefix(textFieldtext.lowercased()) }
        }
    }
}
