//
//  OnboardingView.swift
//  F.cars
//
//  Created by admin1 on 06.02.2022.
//

import SwiftUI

struct OnboardingView: View {
    //MARK: - PROPERTIES
    
    //MARK: - BODY
    var body: some View {
        TabView {
            ForEach(0..<5) { item in
                CarCardView()
            }
        }//TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
        
    }
}

    //MARK: - PREVIEW
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
