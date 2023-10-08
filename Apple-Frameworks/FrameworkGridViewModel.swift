//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Rahul Rai on 07/10/23.
//

import SwiftUI

// We used class because we are dealing with states
// Observable objects kinds of broadcast when a view changes

final class FrameworkGridViewModel: ObservableObject {
    // ? -> Its going to be a optional.
    var selectedFramework: Framework? {
        didSet{
            isShowingDetailView = true
        }
    }
    
    

    @Published var isShowingDetailView = false
    
}
