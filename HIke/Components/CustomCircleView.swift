//
//  CustomCircleView.swift
//  HIke
//
//  Created by SMIT KHOKHARIYA on 2024-02-06.
//

import SwiftUI

struct CustomCircleView: View {
    
    @State private var isAnimateGradient: Bool = false

    var body: some View {
        ZStack {
            Circle()
                .fill(
                    LinearGradient(
                        colors: [
                            .customIndigoMedium,
                            .customSalmanLight
                        ],
                        startPoint: isAnimateGradient ? .topLeading : .bottomTrailing,
                        endPoint: isAnimateGradient ? .bottomTrailing : .topTrailing
                    ))
                .onAppear{
                    withAnimation(.linear(duration: 3.0)
                        .repeatForever(autoreverses: true)){
                            isAnimateGradient.toggle()
                        }
                }
            MotionAnimationView()
        }
        .frame(width: 256, height: 256)
        
    }
}

#Preview {
    CustomCircleView()
}
