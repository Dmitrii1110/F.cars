//
//  CarCardView.swift
//  F.cars
//
//  Created by admin1 on 06.02.2022.
//

import SwiftUI

struct CarCardView: View {
    // MARK: - PROPERTIES
    
    @State private var isAnimating: Bool = false
    
    // MARK: BODY
    
    
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                // CAR: IMAGE
                Image ("Skyline")
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red:0, green:0, blue:0, opacity: 0.15), radius: 8,
                            x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                // CAR: TITLE
                Text("Nissan Skyline")
                    .foregroundColor(Color.black)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    //.shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), redius: 2, x: 2, y: 2)
                // CAR: HEADLINE
                Text("It is in this legendary tuner that we find Walker at the beginning of 2 Fast 2 Furious.")
                    .foregroundColor(Color.black)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                
                // BUTTON: START
                StartButtonView()
            } // VSTACK
        } // ZSTACK
        .onAppear {
            withAnimation(.easeInOut(duration: 0.5)) {
                isAnimating = true
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: [Color("ColorSkylineLight"), Color ("ColorSkylineDark")]), startPoint: .top, endPoint: .bottom))
    }
}
    // MARK: PREVIEW
struct CarCardView_Previews: PreviewProvider {
    static var previews: some View {
        CarCardView()
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
