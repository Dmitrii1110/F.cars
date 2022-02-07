//
//  CarDetailView.swift
//  F.cars
//
//  Created by admin1 on 07.02.2022.
//

import SwiftUI

struct CarDetailView: View {
    //MARK: - PROPERTIES
    
    var car: Car
    
    //MARK: - BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
            
            VStack(alignment: .center, spacing: 20) {
                //HEADER
                CarHeaderView(car: car)
                
                VStack(alignment: .center, spacing: 20) {
                    //TITLE
                    Text(car.title)
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(car.gradientColors[1])
                    
                    //HEADLINE
                    Text(car.headline)
                        .font(.headline)
                        .multilineTextAlignment(.leading)
                    
                    //CAR FEATURES
                    CarFeaturesView(car: car)
                    
                    //SUBHEADING
                    Text("Learn more about \(car.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(car.gradientColors[1])
                    
                    //DESCRIPTION
                    Text(car.description)
                        .multilineTextAlignment(.leading)
                    
                    //LINK
                    SourceLinkView()
                        .padding(.top, 10)
                        .padding(.bottom, 40)
                    
                }//VSTACK
                .padding(.horizontal, 20)
                .frame(maxWidth: 640, alignment: .center)
                
            }//VSTACK
            .navigationBarTitle(car.title, displayMode: .inline)
            .navigationBarHidden(true)
            
        }//SCROLL
            .edgesIgnoringSafeArea(.top)
    }//NAVIGATION
}
}


//MARK: - PREVIEW
struct CarDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CarDetailView(car: carsData[0])
            .preferredColorScheme(.dark)
    }
}
