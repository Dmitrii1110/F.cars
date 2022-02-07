//
//  CarModel.swift
//  F.cars
//
//  Created by admin1 on 07.02.2022.
//

import SwiftUI

//MARK: - CAR DATA MODEL

struct Car: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var features: [String]
}
