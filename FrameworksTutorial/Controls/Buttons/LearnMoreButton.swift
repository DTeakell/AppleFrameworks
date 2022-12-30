//
//  LearnMoreButton.swift
//  FrameworksTutorial
//
//  Created by Dillon Teakell on 12/23/22.
//

import SwiftUI

struct LearnMoreButton: View {
    @Binding var isShowingSafariView: Bool
    var body: some View {
        Button {
            isShowingSafariView = true
        } label: {
            Text("Learn More")
                .font(.title3)
                .fontWeight(.semibold)
                .frame(width: 200, height: 50)
                .background(Color.red)
                .foregroundColor(.white)
                .cornerRadius(10)
                
        }
    }
}

struct LearnMoreButton_Previews: PreviewProvider {
    static var previews: some View {
        LearnMoreButton(isShowingSafariView: .constant(true))
    }
}
