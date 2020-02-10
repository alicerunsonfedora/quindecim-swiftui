//
//  QuindecimFeed.swift
//  Quindecim
//
//  Created by Marquis Kurt on 2/9/20.
//  Copyright © 2020 Marquis Kurt. All rights reserved.
//

import Foundation

class QuindecimFeedFetcher: ObservableObject {
    @Published var posts = [QuindecimWPFeedEntry]()
    
    init() {
        getPosts()
    }
    
    func getPosts() {
        let feedUrl = URL(string: "http://quinnews.com/wp-json/wp/v2/posts/")!
        
        URLSession.shared.dataTask(with: feedUrl){(data, response, error) in
            do {
                if let d = data {
                    let decodedPosts = try JSONDecoder().decode([QuindecimWPFeedEntry].self, from: d)
                    DispatchQueue.main.async {
                        self.posts = decodedPosts
                    }
                } else {
                    print("No data could be found or the resource is inaccessible.")
                }
            } catch {
                print("An error occurred when fetching the data.")
            }
        }.resume()
    }
}
