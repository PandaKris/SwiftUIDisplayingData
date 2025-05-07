//
//  ListView.swift
//  SwiftUIDisplayingData
//
//  Created by Kristanto Sean on 2025-05-06.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [String] = [
        "Ballerina Cappucina",
        "Bombardino Crocodilo",
        "Bombombini Gusini",
        "Bomborito Bandito",
        "Brr Brr Patapim",
        "La Vaca Saturno Saturnita",
        "Lirili Rili Ralila",
        "Tralalero Tralala",
        "Trippi Troppi",
        "Tung Tung Tung Sahur"
    ]
    
    var body: some View {
        NavigationStack {
            List(items, id:\.self) { item in
                NavigationLink(
                    destination: BrainRotDetailView(
                        data: GridData(title: item, image: item)
                    )
                ) {
                    Text(item)
                }
            }
//            .listStyle(.plain)
            
            .navigationTitle("List")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ListView()
}
