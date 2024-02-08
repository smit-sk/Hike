//
//  CustomListRowView.swift
//  HIke
//
//  Created by SMIT KHOKHARIYA on 2024-02-07.
//

import SwiftUI

struct CustomListRowView: View {
    // MARK: - PROPERTIES
    
    @State var rowLabel: String
    @State var rowIcon: String
    @State var rowContent: String? = nil
    @State var rowTintColor: Color
    
    @State var rowLinkLabel: String? = nil
    @State var rowLinkDestionation: String? = nil
    
    var body: some View {
        LabeledContent {
            if rowContent != nil {
                Text(rowContent!)
                    .foregroundColor(.primary)
                    .fontWeight(.heavy)
            }else if (rowLinkLabel != nil && rowLinkDestionation != nil) {
                Link(
                        rowLinkLabel!,
                        destination: URL(string: rowLinkDestionation!)!
                )
                .foregroundColor(.pink)
                .fontWeight(.heavy)
                
            }else {
                EmptyView()
            }
        }label: {
            HStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width: 30, height: 30)
                        .foregroundColor(rowTintColor)
                   Image(systemName: rowIcon)
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                }
                Text(rowLabel)
            }
        }
    }
}

struct CustomListRowView_Previews: PreviewProvider {
    static var previews: some View {
        List{
            CustomListRowView(
                rowLabel: "Website",
                rowIcon: "globe",
                rowContent: nil,
                rowTintColor: .pink,
                rowLinkLabel: "Credo Academy",
                rowLinkDestionation: "https://credo.acedemy"
                
            )
        }
        
    }
}
