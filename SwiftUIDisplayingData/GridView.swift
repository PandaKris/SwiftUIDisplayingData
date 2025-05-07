//
//  GridView.swift
//  SwiftUIDisplayingData
//
//  Created by Kristanto Sean on 2025-05-06.
//

import SwiftUI

struct GridView: View {
    
    @State var items: [String] = [
        "sun.min", "sunrise", "sunset", "sun.rain", "moon", "moon.stars", "moon.stars.fill", "cloud", "cloud.rain", "cloud.fog", "smoke", "wind", "snowflake", "tornado", "hurricane", "rainbow"
    ]

    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(items, id: \.self) { item in
                        Image(systemName:item)
                            .resizable()
                            .scaledToFit()
                            .padding()
                    }
                }
                .padding(.horizontal)
            }
            
            .navigationTitle("Grid")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    GridView()
}
