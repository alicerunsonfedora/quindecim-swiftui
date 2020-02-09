//
//  QuindecimWPFeedEntry.swift
//  Quindecim
//
//  Created by Marquis Kurt on 2/9/20.
//  Copyright © 2020 Marquis Kurt. All rights reserved.
//

import Foundation

struct QuindecimWPFeedEntry: Decodable {
    var id: Int
    var date: Date
    var slug: String
    var link: String
    var title: QuindecimWPRenderedField
    var content: QuindecimWPRenderedField
    var excerpt: QuindecimWPRenderedField
    var author: Int
    var categories: [Int?]
    var featured_media: Int?
}
