//
//  IkonInfo.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 29/11/24.
//

import Foundation


struct ikonInfo:Identifiable,Equatable{
    var id = UUID().uuidString
    var artWorks: String
    var artWorkNames: String
    var level: String
    var City: String
    var isFavourite: Bool
}
