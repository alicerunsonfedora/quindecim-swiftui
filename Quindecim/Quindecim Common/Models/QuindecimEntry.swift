//
//  QuindecimEntry.swift
//  Quindecim
//
//  Created by Marquis Kurt on 2/9/20.
//  Copyright © 2020 Marquis Kurt. All rights reserved.
//

import Foundation

struct QuindecimEntry: Decodable {
    var id: Int
    var date: String
    var date_gmt: String
    var slug: String
    var link: String
    var title: QuindecimWPRendered
    var content: QuindecimWPRendered
    var excerpt: QuindecimWPRendered
    var author: Int
    var featured_media: Int
}
