//
//  MyIconsViewModel.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 25/11/24.
//

import SwiftUI

class MyIconsViewModel: ObservableObject{
    
    
    @Published var searchSelected : Bool = false
    @Published var showAlert: Bool = false
    
    var columns = Array(repeating: GridItem(.flexible(minimum: 150, maximum: 200)), count: 2)
    @State var isSelected: Bool = false
    var columnsSecond = Array(repeating: GridItem(.flexible()), count: 2)
    var onTap: ()->() = {}
    
    @Published var dialogueCellArray : [ikonInfo] = [
        ikonInfo(artWorks: "artWork1", artWorkNames: "LINDA", level: "27", City: "America", isFavourite: false),
        ikonInfo(artWorks: "artWork2", artWorkNames: "GARFIELD", level:"21", City: "THAI", isFavourite: false),
        ikonInfo(artWorks: "artWork3", artWorkNames: "PAUL", level: "22", City: "America", isFavourite: false),
        ikonInfo(artWorks: "artWork4", artWorkNames: "MARY", level: "20", City: "America", isFavourite: false),
        ikonInfo(artWorks: "artWork5", artWorkNames: "ANNA", level: "24", City: "Indian", isFavourite: false),
        ikonInfo(artWorks: "artWork6", artWorkNames: "JOHN", level: "24", City: "America", isFavourite: false)
    ]
    
    @Published var selectedFilter : [FilterInfo] = []
    
    func addGenre(genre: FilterInfo) {
        if selectedFilter.contains(genre) {
            selectedFilter.removeAll { $0 == genre }
        } else {
            selectedFilter.append(genre)
        }
    }
    

//    func allFilters(ikonInfo:[ikonInfo])-> [ikonInfo] {
//        
//        let isMyFavouritesSelected = selectedFilter.contains { $0.title == "My Favourites" }
//            let isLowToHighSelected = selectedFilter.contains { $0.title == "Low To High Level" }
//            
//            if isMyFavouritesSelected {
//                return dialogueCellArray.filter { $0.isFavourite }
//            }
//        else if isLowToHighSelected {
//            return dialogueCellArray.sorted { $0.level < $1.level }
//        }
//            else if !$textFieldtext.isEmpty {
//                return dialogueCellArray.filter {
//                    $0.City.lowercased().contains($textFieldtext.lowercased())
//                }
//            }
//        else {
//                return dialogueCellArray
//            }
//    }
    
}
