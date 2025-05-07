//
//  GridWithComplexDataView.swift
//  SwiftUIDisplayingData
//
//  Created by Kristanto Sean on 2025-05-06.
//

import SwiftUI

struct GridData: Hashable {
    var title: String
    var image: String
    var color: Color = .black
}

struct GridWithComplexDataView: View {
    
    @State var items: [GridData] = [
        GridData(
            title: "Ballerina Cappucina",
            image: "Ballerina Cappucina",
            color: .brown
        ),

        GridData(
            title: "Bombardino Crocodilo",
            image: "Bombardino Crocodilo",
            color: .cyan
        ),

        GridData(
            title: "Bombombini Gusini",
            image: "Bombombini Gusini",
            color: .gray
        ),

        GridData(
            title: "Bomborito Bandito",
            image: "Bomborito Bandito",
            color: .gray
        ),

        GridData(
            title: "Brr Brr Patapim",
            image: "Brr Brr Patapim",
            color: .green
        ),

        GridData(
            title: "La Vaca Saturno Saturnita",
            image: "La Vaca Saturno Saturnita",
            color: .black
        ),

        GridData(
            title: "Lirili Rili Ralila",
            image: "Lirili Rili Ralila",
            color: .white
        ),

        GridData(
            title: "Tralalero Tralala",
            image: "Tralalero Tralala",
            color: .blue
        ),

        GridData(
            title: "Trippi Troppi",
            image: "Trippi Troppi",
            color: .blue
        ),

        GridData(
            title: "Tung Tung Tung Sahur",
            image: "Tung Tung Tung Sahur",
            color: .brown
        ),

    ]
    
    let columns = [
        GridItem(.flexible(), spacing: 24),
        GridItem(.flexible(), spacing: 24)
    ]
    
    let spacing: CGFloat = 24
    
    var body: some View {
        NavigationStack {
            GeometryReader { geometry in
                
                let totalSpacing = spacing * CGFloat(columns.count - 1)
                let width = (geometry.size.width - totalSpacing) / CGFloat(columns.count)

                ScrollView {
                    LazyVGrid(columns: columns, spacing: 24) {
                        ForEach(items, id: \.self) { item in
                            NavigationLink(
                                destination: BrainRotDetailView(data: item)
                            ) {
                                Image(item.image)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: width, height: 200)
                                    .clipShape(RoundedRectangle(cornerRadius: 25))
                                    .shadow(color: item.color, radius: 24)
                            }
                        }
                    }.padding(.horizontal)
                }
                
                .navigationTitle("Complex Grid")
                .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
}

#Preview {
    GridWithComplexDataView()
}
