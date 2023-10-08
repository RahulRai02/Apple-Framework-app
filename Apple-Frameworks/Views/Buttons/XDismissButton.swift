//
//  XDismissButton.swift
//  Apple-Frameworks
//
//  Created by Rahul Rai on 08/10/23.
//

import SwiftUI

struct XDismissButton: View {
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        
        HStack{
            Spacer()
            Button{
//                    print("Tapped")
                isShowingDetailView = false
            }label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color(.label)) // Supports light as well dark mode
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
                
            }
        }.padding()
    }
}

