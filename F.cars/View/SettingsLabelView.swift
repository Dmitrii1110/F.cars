//
//  SettingsLabelView.swift
//  F.cars
//
//  Created by admin1 on 07.02.2022.
//

import SwiftUI

struct SettingsLabelView: View {
    //MARK: - PROPERTIES
    
    var labelText: String
    var labelImage: String
    
    //MARK: - BODY
    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

//MARK: - PREVIEW
struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "Форсаж Cars", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
