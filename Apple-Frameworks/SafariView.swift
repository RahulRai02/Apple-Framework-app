//
//  SafariView.swift
//  Apple-Frameworks
//
//  Created by Rahul Rai on 08/10/23.
//

import Foundation
import SafariServices
import SwiftUI


struct SafariView: UIViewControllerRepresentable{
    
    let url : URL
    // 2 functions required....
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
        SFSafariViewController(url: url)
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {}
    
}
