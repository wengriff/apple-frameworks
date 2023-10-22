//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Adrian Somor on 03/09/2023.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(MockData.frameworks, id: \.id) { framework in
                        NavigationLink(value: framework) {
                            FrameworkTitleView(framework: framework)

                        }
                        .navigationDestination(for: Framework.self) { framework in
                            FrameworkDetailView(framework: framework)
                        }
                    }
                    .navigationTitle("🍎 Frameworks")
                }
            }
        }.accentColor(Color(.label))
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
            .preferredColorScheme(.dark)
    }
}
