//
//  QuindecimArticle.swift
//  Quindecim
//
//  Created by Marquis Kurt on 2/9/20.
//  Copyright © 2020 Marquis Kurt. All rights reserved.
//

import Foundation

class QuindecimArticleFetcher: ObservableObject {
    @Published var data: QuindecimWPArticle
    
    init(id: Int) {
        getArticle(withId: id)
    }
    
    func getArticle(withId: Int) {
        let articleURL = URL(string: "https://quinnews.com/wp-json/wp/v2/posts/" + String(withId))!
        
        URLSession.shared.dataTask(with: articleUrl) {(data, response, error) in
            do {
                if let d = data {
                    let decodedArticle = try JSONDecoder().decode(QuindecimWPArticle.self, from: d)
                    DispatchQueue.main.async {
                        self.data = decodedArticle
                    }
                } else {
                    print("No article data could be found or the resource is inaccessible.")
                }
            } catch {
                print("An error occured when fetching the data.")
            }
        }
    }
}
