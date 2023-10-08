//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Rahul Rai on 06/10/23.
//

import SwiftUI


struct FrameworkGridView: View {
    
    // Use stateobject when you are intializing a brand new view model
    // If injecting it from a previous or existing view, then we initialize it with
    // observedObject
    
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    let columns : [GridItem] = [ GridItem(.flexible()),
                                 GridItem(.flexible()),
                                 GridItem(.flexible())
    ]
    
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: columns){
                    ForEach(MockData.frameworks){ framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
//                                print(framework)
                                viewModel.selectedFramework = framework
//                                print(viewModel.isShowingDetailView)
                            }
                       
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
            .sheet(isPresented: $viewModel.isShowingDetailView){
                FrameworkDetails(framework: 
                                    viewModel.selectedFramework!, isShowingDetailView: $viewModel.isShowingDetailView)
            }
            
        }
        
    }
    
}


struct FrameworkGridView_Previews: PreviewProvider{
    static var previews: some View{
        FrameworkGridView()
    }
}


struct FrameworkTitleView: View{
    let framework: Framework
    
    var body: some View{
        VStack{
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }.padding()
    }
    
}
