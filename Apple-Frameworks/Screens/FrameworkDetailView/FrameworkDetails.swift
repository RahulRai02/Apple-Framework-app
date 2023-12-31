//
//  FrameworkDetails.swift
//  Apple-Frameworks
//
//  Created by Rahul Rai on 06/10/23.
//

import SwiftUI


struct FrameworkDetails: View {
    var framework: Framework
    
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView = false
    
    
    var body: some View{
        VStack{
            XDismissButton(isShowingDetailView: $isShowingDetailView)

        
            Spacer()
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
                
            Spacer()
            Button{
                print("Tapped Learn more")
                isShowingSafariView = true
            }label: {
                customButton(title: "Learn more")
            }
        }
        // We can use both sheet and fullScreenCover. Use whichever is useful in app
        
        .fullScreenCover(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.google.com ")!)
        })
        
    }
}


struct FrameworkDetails_Previews: PreviewProvider{
    static var previews: some View{
        FrameworkDetails(framework: MockData.sampleFramework,
                         isShowingDetailView: .constant(false))
//            .preferredColorScheme(.dark)
    }
}




