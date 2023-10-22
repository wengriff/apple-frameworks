//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Adrian Somor on 04/09/2023.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: Framework
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack {
            Spacer()
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Link(destination: URL(string: framework.url) ?? URL(string: "www.apple.com")!) {
                AFButton(title: "Learn More")
                
            }
            
//            Button {
//                isShowingSafariView = true
//            } label: {
////                AFButton(title: "Learn More")
//                Label("Learn More", systemImage: "book.fill")
//            }.buttonStyle(.borderedProminent)
//                .controlSize(.large)
//                .tint(.red)
        }
//        .sheet(isPresented: $isShowingSafariView, content: {SafariView(url: URL(string: framework.url) ?? URL(string: "www.apple.com")!)})
        .accentColor(Color(.label))
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: MockData.sampleFramework)
            .preferredColorScheme(.dark)
    }
}
