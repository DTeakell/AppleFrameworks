//
//  FrameworkGridViewModel.swift
//  FrameworksTutorial
//
//  Created by Dillon Teakell on 12/23/22.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    var selectedFramework: Framework? {
        didSet { isShowingDetailView = true }
    }
    @Published var isShowingDetailView = false
    
}
