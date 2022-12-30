//
//  DismissButton.swift
//  FrameworksTutorial
//
//  Created by Dillon Teakell on 12/27/22.
//

import SwiftUI

struct DismissButton: View {
    @Binding var isShowingView: Bool
    
    var body: some View {
        HStack {
            Spacer()
            
            Button {
                isShowingView = false
            } label: {
                Text("Done")
                    .foregroundColor(Color(.label))
            }
            .padding()
        }
    }
}
