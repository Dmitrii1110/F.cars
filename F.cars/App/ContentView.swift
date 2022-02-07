//
//  ContentView.swift
//  F.cars
//
//  Created by admin1 on 06.02.2022.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: - PROPERTIES
    
    var cars: [Car] = carsData
    
    //MARK: - BODY
    var body: some View {
        NavigationView {
            List {
                ForEach(cars.shuffled()) { item in
                    CarRowView(car: item)
                        .padding(.vertical, 4)
                }
            }
            .navigationTitle("Cars")
        }//NAVIGATION
    }
}

//MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(cars: carsData)
            .preferredColorScheme(.dark)
    }
}
