//
//  F_carsApp.swift
//  F.cars
//
//  Created by admin1 on 06.02.2022.
//

import SwiftUI

@main
struct F_carsApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
