//
//  FrameworkDetailView.swift
//  FrameworksTutorial
//
//  Created by Dillon Teakell on 12/23/22.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: Framework
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView = false
    var body: some View {
        VStack {
            
            DismissButton(isShowingView: $isShowingDetailView)
            
            Spacer()
            
            //Title of Framework
            FrameworkTitleView(framework: framework)
            
            //Description of Framework
            Text(framework.description)
                .padding()
                .font(.body)
            
            Spacer()
            
            LearnMoreButton(isShowingSafariView: $isShowingSafariView)
            
        }
        .sheet(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
        })
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: Framework.MockData.sampleFramework, isShowingDetailView: .constant(false))
    }
}
