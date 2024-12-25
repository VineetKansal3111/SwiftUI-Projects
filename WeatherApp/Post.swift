//
//  NewModel.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 02/12/24.
//

import Foundation


struct Post: Codable {
    let postId: Int
    let id: Int
    let name: String
    let email: String
    let body: String
}

//fetchPosts { posts in
//    if let posts = posts {
//
//        for post in posts {
//            print("Post ID: \(post.id), Name: \(post.name), Email: \(post.email)")
//        }
//    } else {
//        print("Failed to fetch or decode posts")
//    }
//}
