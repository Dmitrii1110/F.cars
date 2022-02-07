//
//  ContentView.swift
//  F.cars
//
//  Created by admin1 on 06.02.2022.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: - PROPERTIES
    
    @State private var isShowingSettings: Bool = false
    
    var cars: [Car] = carsData
    
    //MARK: - BODY
    var body: some View {
        NavigationView {
            List {
                ForEach(cars.shuffled()) { item in
                        NavigationLink(destination: CarDetailView(car: item)) {
                            CarRowView(car: item)
                                .padding(.vertical, 4)
                        }
                }
            }
            .navigationTitle("Cars")
            .navigationBarItems(
                trailing:
                    Button(action: {
                        isShowingSettings = true
                    }) {
                        Image(systemName: "slider.horizontal.3")
                    }//BUTTON
                    .sheet(isPresented: $isShowingSettings) {
                        SettingsView()
                    }
                )
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
