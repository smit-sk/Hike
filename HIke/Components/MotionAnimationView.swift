//
//  MotionAnimationView.swift
//  HIke
//
//  Created by SMIT KHOKHARIYA on 2024-02-06.
//

import SwiftUI

struct MotionAnimationView: View {
    
    @State private var randomCircle: Int = Int.random(in: 6...12)
    @State private var isAnimating: Bool = false
    
    
    // MARK: - FUNCTIONS
    
    // 1. random coordinate
    
    func randomCoordinate()-> CGFloat {
        return CGFloat.random(in: 0...256)
    }
    
    // 2. random size
    
    func randomSize()-> CGFloat {
        return CGFloat.random(in: 4...80)
    }
    
    // 3. random scale
    func randomScale()-> CGFloat {
        return CGFloat(Double.random(in: 0.1...2.0))
    }
    
    
    // 4. Random speed
    func randomSpeed()-> Double {
        return Double.random(in: 0.05...1.0)
    }
    
    // 5. random Delay
    func randomDelay()-> Double {
        return Double.random(in: 0...2)
    }
    
    var body: some View {
        ZStack {
            ForEach(0...randomCircle, id: \.self) { item in
                Circle()
                    .foregroundColor(.white)
                    .opacity(0.25)
                    .frame(width: randomSize())
                    .position(
                        x: randomCoordinate(),
                        y: randomCoordinate()
                    )
                    .scaleEffect(isAnimating ? randomScale() : 1)
                    .onAppear(perform: {
                        withAnimation(
                            .interpolatingSpring(stiffness: 0.25, damping: 0.25)
                            .speed(randomSpeed())
                            .delay(randomDelay())
                            .repeatForever()){
                                isAnimating = true
                            }
                    })
            }
        }//: ZStack
        .frame(width: 256, height: 256)
        .mask(Circle())
        .drawingGroup() // directly connected to GPU | speed optimization
    }
}

struct MotionAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            MotionAnimationView()
                .background(
                    Circle()
                        .fill(.teal))
        }
    }
}
