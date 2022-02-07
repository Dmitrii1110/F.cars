//
//  CarFeaturesView.swift
//  F.cars
//
//  Created by admin1 on 07.02.2022.
//

import SwiftUI

struct CarFeaturesView: View {
    //MARK: - PROPERTIES
    
    var car: Car
    
    let features: [String] = ["Model", "Transmission", "Engine", "HP"]
    
    //MARK: - BODY
    var body: some View {
        GroupBox() {
            DisclosureGroup("Car Features") {
                
            ForEach(0..<features.count, id:\.self) { item in
                Divider().padding(.vertical, 2)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(features [item])
                        }
                    
                    .foregroundColor(car.gradientColors[1])
                    .font(Font.system(.body).bold())
                    Spacer(minLength: 25)
                    Text(car.features [item])
                        .multilineTextAlignment(.trailing)
                }//HSTACK
            }
            }
            
        }//BOX
        
    }
}

//MARK: - PREVIEW
struct CarFeaturesView_Previews: PreviewProvider {
    static var previews: some View {
        CarFeaturesView(car: carsData[0])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
