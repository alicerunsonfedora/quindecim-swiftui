//
//  QuindecimEntryListView.swift
//  Quindecim
//
//  Created by Marquis Kurt on 2/9/20.
//  Copyright © 2020 Marquis Kurt. All rights reserved.
//

import SwiftUI

struct QuindecimEntryListView: View {
    var post: QuindecimWPFeedEntry
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 2.0) {
                Text(post.title.rendered)
                    .font(.headline)
                    .bold()
                Text(post.excerpt.rendered)
                HStack {
                    Text(String(post.author))
                        .font(.caption)
                        .foregroundColor(.white)
                }
                    .padding(.vertical, 2.0)
                    .padding(.horizontal, 8.0)
                    .background(Color.gray)
                    .cornerRadius(4.0)
                Text(post.date.description)
                    .font(.caption)
                    .foregroundColor(.gray)
            }
        }
    }
}

#if DEBUG
struct QuindecimEntryListView_Previews: PreviewProvider {
    @ObservedObject static var feed = QuindecimFeedFetcher()
    static var previews: some View {
        VStack {
            Text("E")
            List(feed.posts) { post in
                VStack {
                    QuindecimEntryListView(post: post)
                }
            }
        }
    }
}
#endif
