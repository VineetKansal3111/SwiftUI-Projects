//
//  MyIconsViewModel.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 25/11/24.
//

import SwiftUI

class MyIkonsViewModel: ObservableObject{
    
    @Published var textFieldtext: String = ""
    @Published var searchSelected : Bool = false
    @Published var showAlert: Bool = false
    
    var columns = Array(repeating: GridItem(.flexible(minimum: 150, maximum: 200)), count: 2)
    @State var isSelected: Bool = false
    var columnsSecond = Array(repeating: GridItem(.flexible()), count: 2)
   
    
    @Published var dialogueCellArray : [ikonInfo] = [
        ikonInfo(artWorks: "artWork1", artWorkNames: "LINDA", level: "27", City: "American", isFavourite: false),
        ikonInfo(artWorks: "artWork2", artWorkNames: "GARFIELD", level:"21", City: "THAI", isFavourite: false),
        ikonInfo(artWorks: "artWork3", artWorkNames: "PAUL", level: "22", City: "American", isFavourite: false),
        ikonInfo(artWorks: "artWork4", artWorkNames: "MARY", level: "20", City: "American", isFavourite: false),
        ikonInfo(artWorks: "artWork5", artWorkNames: "ANNA", level: "24", City: "Indian", isFavourite: false),
        ikonInfo(artWorks: "artWork6", artWorkNames: "JOHN", level: "24", City: "American", isFavourite: false)
    ]
    
    @Published var selectedFilter : [FilterInfo] = []
    
    func addGenre(Filter: FilterInfo) {
        if selectedFilter.contains(Filter) {
            selectedFilter.removeAll { $0 == Filter }
        } else {
            selectedFilter.append(Filter)
        }
    }
    
    var filteredNames: [ikonInfo] {
        var filteredArray = dialogueCellArray
        
        if selectedFilter.contains(where: { $0.title == "My Favourites" }) {
            filteredArray = filteredArray.filter { $0.isFavourite }
        }
        
        if !textFieldtext.isEmpty {
            filteredArray = filteredArray.filter {
                $0.City.lowercased().contains(textFieldtext.lowercased())
            }
        }
        
        if selectedFilter.contains(where: { $0.title == "Low To High Level" }) {
            filteredArray = filteredArray.sorted { $0.level < $1.level }
        }
        
        if selectedFilter.contains(where: {$0.title == "High To Low Level"}){
            filteredArray = filteredArray.sorted { $0.level > $1.level }
        }
        
        if selectedFilter.contains(where: {$0.title == "By Language"}){
            filteredArray = filteredArray.sorted { $0.City < $1.City }
        }
        
        return filteredArray
    }
    
}
