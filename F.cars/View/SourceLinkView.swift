//
//  SourceLinkView.swift
//  F.cars
//
//  Created by admin1 on 07.02.2022.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
        GroupBox() {
            HStack {
                Text("Content source")
                Spacer()
                Link("YouTube", destination: URL(string: "https://youtu.be/ZvqV-a44U_w?t=18")!)
                Image(systemName: "Link")
            }
            .font(.footnote)
        }
    }
}

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
