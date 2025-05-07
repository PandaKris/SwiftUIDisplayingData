//
//  ContentView.swift
//  SwiftUIDisplayingData
//
//  Created by Kristanto Sean on 2025-05-06.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ListView()
                .tabItem {
                    Label("List", systemImage: "list.bullet")
                }

            GridView()
                .tabItem {
                    Label("Grid", systemImage: "square.grid.2x2")
                }

            GridWithComplexDataView()
                .tabItem {
                    Label("Complex Grid", systemImage: "square.grid.3x3")
                }

        }
    }
}

#Preview {
    ContentView()
}
