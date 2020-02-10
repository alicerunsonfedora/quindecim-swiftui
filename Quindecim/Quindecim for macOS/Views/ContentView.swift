//
//  ContentView.swift
//  Quindecim for macOS
//
//  Created by Marquis Kurt on 2/9/20.
//  Copyright © 2020 Marquis Kurt. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var feed = QuindecimFeedFetcher()
    
    var body: some View {
        HStack {
            List(feed.posts) { entry in
                QuindecimEntryListView(post: entry)
            }
            Text("E")
        }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
