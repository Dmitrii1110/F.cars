//
//  CarDate.swift
//  F.cars
//
//  Created by admin1 on 07.02.2022.
//

import SwiftUI

//MARK: - CARS DATA

var carsData: [Car] = [


    Car(title: "Mitsubishi",
         headline: "From the first film hasn't aged well. But despite the tacky graphics, over-the-top body kit.",
         image: "Mitsubishi",
         gradientColors: [Color("ColorMitsubishiLight"), Color("ColorMitsubishiDark")],
         description: "Although it's never made clear exactly which model is featured in the film, a 210-hp, turbocharged, 2.0-liter inline-four and all-wheel drive came standard on the second-gen Eclipse GSX.",
         features: ["Eclipse GSX", "Manual", "2.0-liter", "140"]),
    
    Car(title: "Mazda RX-7",
         headline: "The idea that racing Toretto is always a bad idea. It also helped make VeilSide a household name for those unfamiliar with the industry.",
         image: "Mazda RX-7",
         gradientColors: [Color("ColorMazdaLight"), Color("ColorMazdaDark")],
         description: "(The car also makes an appearance in Tokyo Drift, as Han’s street racer in the Japanese capital city.)",
         features: ["RX-7", "Manual", "2.0-liter", "330"]),
    
    Car(title: "Nissan Skyline",
         headline: "It is in this legendary tuner that we find Walker at the beginning of 2 Fast 2 Furious.",
         image: "Skyline",
         gradientColors: [Color("ColorSkylineLight"), Color("ColorSkylineDark")],
         description: "Armed with a 2.6 liter twin-turbo inline six, the Skyline actually needed to be altered by the production crew, as the car’s traction controls and grip were so extreme that the burnouts needed for the film shoot were nearly impossible to perform.",
         features: ["Skyline GT-R R34", "Manual", "2.6-liter", "550"]),
    
    Car(title: "Toyota Supra",
         headline: "Walker is challenged by a snobby Ferrari owner to a drag-race, only to destroy the Italian sportscar.",
         image: "Supra",
         gradientColors: [Color("ColorSupraLight"), Color("ColorSupraDark")],
         description: "Getting us started is the ’94 Toyota Supra rebuilt and driven by the late Paul Walker’s character Brian O’Conner in the original film, The Fast and the Furious. ",
         features: ["Toyota Supra MK IV", "Manual", "3.1-liter", "320"]),
    
    Car(title: "Dodge Charger R/T",
         headline: "This classic muscle car is the mythical beast of the first film in the franchise, sitting undisturbed for decades in a garage, only to be restored just in time to crash it into a big rig.",
         image: "Dodge",
         gradientColors: [Color("ColorDodgeLight"), Color("ColorDodgeDark")],
         description: "But seriously, watching the car’s 900HP engine launch the front wheels off the ground in a stunning display of torque remains one of the signature images of The Fast and the Furious. The car has also made numerous cameos in the subsequent films.",
         features: ["Charger R/T", "Manual", "5.2-liter", "900"])

]
