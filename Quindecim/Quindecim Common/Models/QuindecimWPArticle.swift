//
//  QuindecimWPArticle.swift
//  Quindecim
//
//  Created by Marquis Kurt on 2/9/20.
//  Copyright © 2020 Marquis Kurt. All rights reserved.
//

import Foundation

struct QuindecimWPArticle: Decodable {
    var id: Int
    var date: Date
    var slug: String
    var link: String
    var title: QuindecimWPRenderedField
    var content: QuindecimWPRenderedField
    var author: Int
    var featured_media: Int?
    var categories: [Int?]
}

