//
//  AFButton.swift
//  Apple-Frameworks
//
//  Created by Rahul Rai on 07/10/23.
//

import Foundation
import SwiftUI

struct customButton: View {
    var title: String

    
    var body: some View {
        Text(title)
            .frame(width: 280, height: 50)
            .background(Color.red)
            .foregroundColor(Color.white)
            .font(.system(size: 20, weight: .bold, design: .default))
            .cornerRadius(12.0)
    }
}
