//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Adrian Somor on 04/09/2023.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject { // ObservableObject so that it can broadcast its changes
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    
}
