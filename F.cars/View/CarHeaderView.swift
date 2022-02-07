//
//  CarHeaderView.swift
//  F.cars
//
//  Created by admin1 on 07.02.2022.
//

import SwiftUI

struct CarHeaderView: View {
    //MARK: - PROPERTIES
    
    @State private var isAnimatingImage: Bool = false
    
    var car: Car
    
    //MARK: - BODY
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: car.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
            
            Image(car.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                .scaleEffect(isAnimatingImage ? 1.0 : 0.6)
        }//ZSTACK
        .frame(height: 440)
        .onAppear() {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimatingImage = true
            }
        }
    }
}

//MARK: - PREVIEW
struct CarHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        CarHeaderView(car: carsData[0])
            .previewLayout(.fixed(width: 375, height: 440))
    }
}
