//
//  FrameworkGridViewModel.swift
//  apple-frameworks
//
//  Created by Agustin Carbajal on 15/11/2023.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    @Published var isShowingDetailView: Bool = false // el published permite que sea escuchado el cambio en los componentes que lo usan
    
}
