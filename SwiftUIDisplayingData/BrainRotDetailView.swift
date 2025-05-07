//
//  BrainRotDetailView.swift
//  SwiftUIDisplayingData
//
//  Created by Kristanto Sean on 2025-05-06.
//

import SwiftUI

struct BrainRotDetailView: View {
    
    var data: GridData
    
    var body: some View {
        VStack {
            Image(data.image)
                .resizable()
                .frame(maxWidth: .infinity)
                .scaledToFit()
            Text(data.title)
                .font(.title)
                .fontWeight(.bold)
        }
    }
}

#Preview {
    BrainRotDetailView(
        data: GridData(
            title: "Bombardino Crocodilo",
            image: "Bombardino Crocodilo",
            color: .blue
        )
    )
}
