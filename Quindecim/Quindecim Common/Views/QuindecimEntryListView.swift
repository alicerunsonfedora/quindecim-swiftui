//
//  QuindecimEntryListView.swift
//  Quindecim
//
//  Created by Marquis Kurt on 2/9/20.
//  Copyright © 2020 Marquis Kurt. All rights reserved.
//

import SwiftUI

struct QuindecimEntryListView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 2.0) {
                Text("Test Article")
                    .font(.headline)
                    .bold()
                Text("I am writing a test view of some kind. Don't worry, nothing's on fire yet.")
                HStack {
                    Text("Jibril Howard")
                        .font(.caption)
                        .foregroundColor(.white)
                }
                    .padding(.vertical, 2.0)
                    .padding(.horizontal, 8.0)
                    .background(Color.gray)
                    .cornerRadius(4.0)
                Text("20 Janurary 2020")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
        }
    }
}

#if DEBUG
struct QuindecimEntryListView_Previews: PreviewProvider {
    static var previews: some View {
        QuindecimEntryListView()
    }
}
#endif
