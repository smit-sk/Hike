//
//  GradientButtonStyle.swift
//  HIke
//
//  Created by SMIT KHOKHARIYA on 2024-02-05.
//

import SwiftUI
import Foundation

struct GradientButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal, 30)
            .background(
                // Conditional Statment with Nul Coalscing
                // Condition ? A : B
                configuration.isPressed ?
                LinearGradient(
                    colors: [
                        .customGrayMedium,
                        .customGrayLight
                    ],
                    startPoint: .top,
                    endPoint: .bottom)
                :
                // A: When User preseed the Button
                // B: When the Button is not pressed
                LinearGradient(
                    colors: [
                        .customGrayLight,
                        .customGrayMedium
                    ],
                    startPoint: .top,
                    endPoint: .bottom)
            )
            .cornerRadius(40)
    }
}

