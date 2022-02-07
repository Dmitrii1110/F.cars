//
//  CarRowView.swift
//  F.cars
//
//  Created by admin1 on 07.02.2022.
//

import SwiftUI

struct CarRowView: View {
    
    var car: Car
    
    //MARK: - PROPERTIES
    
    
    //MARK: - BODY
    var body: some View {
        HStack {
            Image(car.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: 3, x: 2, y: 2)
                            .background(LinearGradient(gradient: Gradient(colors: car.gradientColors), startPoint: .top, endPoint: .bottom))
                            .cornerRadius(8)
            VStack(alignment: .leading, spacing: 5) {
                Text(car.title)
                    .font(.title2)
                    .fontWeight(.bold)
                
                Text(car.headline)
                    .font(.caption)
                    .foregroundColor(Color.secondary)
            }
        }//HStack
    }
}

    //MARK: - PREVIEW
struct CarRowView_Previews: PreviewProvider {
    static var previews: some View {
        CarRowView(car: carsData[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
