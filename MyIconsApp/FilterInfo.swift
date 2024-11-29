//
//  FilterInfoModel.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 29/11/24.
//

import Foundation

struct FilterInfo:Identifiable,Equatable{
    var id = UUID().uuidString
    var title: String
    var isSelected: Bool
    
    static var array : [FilterInfo] = [
        FilterInfo(title: "My Favourites", isSelected: false),
        FilterInfo(title: "Low To High Level", isSelected: false),
        FilterInfo(title: "High To Low Level", isSelected: false),
        FilterInfo(title: "For Rent", isSelected: false),
        FilterInfo(title: "On Sale", isSelected: false),
        FilterInfo(title: "By Gender", isSelected: false),
        FilterInfo(title: "By Accent", isSelected: false),
        FilterInfo(title: "By Language", isSelected: false)
    ]
}
