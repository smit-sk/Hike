//
//  SettingView.swift
//  HIke
//
//  Created by SMIT KHOKHARIYA on 2024-02-06.
//

import SwiftUI

struct SettingView: View {
    var body: some View {
        List{
            // MARK: - SECTION HEADER
            Section {
                HStack {
                    Spacer()
                    Image(systemName: "laurel.leading")
                        . font(.system(size: 80, weight: .black))
                    
                    VStack(spacing: -10) {
                        Text("Hike")
                            .font(.system(size: 66))
                            .fontWeight(.black)
                        
                        Text("Editors' Choice")
                            .fontWeight(.medium)
                    }
                    
                    
                    
                    Image(systemName: "laurel.trailing")
                        . font(.system(size: 80, weight: .black))
                    Spacer()
                }
                .foregroundStyle(
                    LinearGradient(colors: [
                        .customGreenLight,
                        .customGreenMedium,
                        .customGreenDark
                    ],
                                   startPoint:.top ,
                                   endPoint: .bottom)
                )
                .padding(.top, 8)
                
                VStack(spacing:8){
                    Text("Where can you find \nperfecrt tracks?")
                        .font(.title2)
                        .fontWeight(.heavy)
                    
                    Text("The hike which looks gorgeous in photos but is even better once you are actually there. The hike that you hope to do again someday. \nFind the besat day hikes in the app.")
                        .font(.footnote)
                        .italic()
                    
                    Text("Dust of the boots! It;s time for a walk.")
                        .fontWeight(.heavy)
                        .foregroundColor(.customGreenMedium)
                }
                .multilineTextAlignment(.center)
                .padding(.bottom, 16)
                .frame(maxWidth: .infinity)
                
            }.listRowSeparator(.hidden)
        
            // MARK: - SECTION ICONS
            
            Section(
                header: Text("About the app"),
                footer: HStack{
                    Spacer()
                    Text("Copyright @ All right reserved.")
                    Spacer()
                }
            ){
                // 1. BAsic Labeled Content
                // LabeledContent("Application", value: "Hike")
                
                // 2. Advanced Labeled Content
                CustomListRowView(rowLabel: "Application", rowIcon: "apps.iphone", rowContent: "HIKE", rowTintColor: .blue)
                CustomListRowView(rowLabel: "Compatibility", rowIcon: "info.circle", rowContent: "iOS, iPadOS", rowTintColor: .red)
                CustomListRowView(rowLabel: "Technology", rowIcon: "swift", rowContent: "Swift", rowTintColor: .orange)
                CustomListRowView(rowLabel: "Version", rowIcon: "gear", rowContent: "1.0", rowTintColor: .purple)
                CustomListRowView(rowLabel: "Developer", rowIcon: "ellipsis.curlybraces", rowContent: "John Doe", rowTintColor: .mint)
                CustomListRowView(rowLabel: "Designer", rowIcon: "paintpalette", rowContent: "Robert Petras", rowTintColor: .pink)
//                CustomListRowView(rowLabel: "Website", rowIcon: "globe", rowContent: "https:credo.academy", rowTintColor: .indigo)
                
                CustomListRowView(rowLabel: "Website", rowIcon: "globe", rowTintColor: .indigo, rowLinkLabel: "Credo Acedemy", rowLinkDestionation: "https://credo.academy")
            }
            
            
            // MARK: _ SECTION ABOUT
        }
       
    }
}

#Preview {
    SettingView()
}
