//
//  PostModel.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 03/12/24.
//

import Foundation

//func fetchPosts(completion: @escaping ([Post]?) -> Void) {
//    // Define the URL of the API
//    guard let url = URL(string: "https://jsonplaceholder.typicode.com/comments?postId=1") else {
//        print("Invalid URL")
//        completion(nil)
//        return
//    }
//
//    // Create a URLSession data task to fetch the data
//    let task = URLSession.shared.dataTask(with: url) { data, response, error in
//        // Handle errors
//        if let error = error {
//            print("Error fetching data: \(error)")
//            completion(nil)
//            return
//        }
//
//        // Check if the response data is valid
//        guard let data = data else {
//            print("No data received")
//            completion(nil)
//            return
//        }
//
//        // Decode the data into the Post model
//        do {
//            let decoder = JSONDecoder()
//            let posts = try decoder.decode([Post].self, from: data)
//            completion(posts)
//        } catch {
//            print("Error decoding data: \(error)")
//            completion(nil)
//        }
//    }
//
//    // Start the network request
//    task.resume()
//}
