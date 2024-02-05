//
//  CardView.swift
//  HIke
//
//  Created by SMIT KHOKHARIYA on 2024-02-05.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        ZStack {
            Circle()
                .fill(
                    LinearGradient(
                        colors: [
                                Color("ColorIndigoMedium"),
                                Color("ColorSalmanLight")
                        ],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )).frame(width: 256, height: 256)
            
            Image("image-1")
                .resizable()
            .scaledToFit()
        }
    }
}

#Preview {
    CardView()
}
