//
//  CardView.swift
//  HIke
//
//  Created by SMIT KHOKHARIYA on 2024-02-05.
//

import SwiftUI

struct CardView: View {
    
    @State private var imageNumber: Int = 1
    @State private var randomNumber: Int = 1
    @State private var isShowingSheet: Bool = false

    func randomImage(){
        repeat {
            randomNumber = Int.random(in: 1...5)
        }while randomNumber == imageNumber
                
        imageNumber = randomNumber
    }
    
    var body: some View {
        ZStack {
            CustomBackgroundView()
            VStack {
                // MARK: - HEADER
                VStack (alignment: .leading){
                    HStack {
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52))
                            .foregroundStyle(
                                LinearGradient(
                                    colors: [
                                        .customGrayLight,
                                        .customGrayMedium
                                    ],
                                    startPoint: .top,
                                    endPoint: .bottom)
                            )
                        Spacer()
                        Button{
                            // ACTION : Show a sheet
                            print("The Button was pressed.")
                            isShowingSheet.toggle()
                            
                        } label: {
                            CustomButtonView()
                        }.sheet(isPresented: $isShowingSheet){
                            SettingView()
                                .presentationDragIndicator(.visible)
                                .presentationDetents([.medium, .large])
                        }
                    }
                    
                    Text("Fun and enjoyable outdoor activity for friends and families.")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(.customGrayMedium)
                    
                }.padding(.horizontal, 30)
                
                
                ZStack {
                    CustomCircleView()
                    
                    Image("image-\(imageNumber)")
                        .resizable()
                        .scaledToFit()
                        .animation(.easeOut(duration: 2), value : imageNumber)
                }
                
                
                Button{
                    print("Explore more Btn pressed..")
                    randomImage()
                    
                }label: {
                    Text("Explore More")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(
                            LinearGradient(
                                colors: [
                                    .customGreenLight,
                                    .customGreenMedium
                                ],
                                startPoint: .top,
                                endPoint: .bottom
                            )
                        )
                        .shadow(
                            color: .black.opacity(0.25),
                            radius: 0.25,
                            x:1,
                            y:2
                        )
                }
                .buttonStyle(GradientButtonStyle())
            }
        }
        .frame(width: 320, height: 570)
    }
}

#Preview {
    CardView()
}
