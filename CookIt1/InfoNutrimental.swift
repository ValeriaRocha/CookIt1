//
//  InfoNutrimental.swift
//  CookIt1
//
//  Created by Valeria Rocha Sepulveda  on 27/03/18.
//  Copyright © 2018 Valeria Rocha Sepulveda . All rights reserved.
//

import UIKit

class InfoNutrimental: NSObject {

    var calorias : Double
    var gluten : Bool
    var lactosa : Bool
    var vegetariana : Bool
    var vegana : Bool
    var fuenteFibra : Bool
    var highCarbs : Bool
    var lowCarbs : Bool
    var highProtein : Bool
    var forDiabetics : Bool
    
    init(calorias : Double, gluten : Bool, lactosa : Bool, vegetariana : Bool, vegana : Bool, fuenteFibra: Bool, highCarbs : Bool, lowCarbs: Bool, highProtein: Bool, forDiabetics: Bool){
        self.calorias = calorias
        self.gluten = gluten
        self.lactosa = lactosa
        self.vegetariana = vegetariana
        self.vegana = vegana
        self.fuenteFibra = fuenteFibra
        self.highCarbs = highCarbs
        self.lowCarbs = lowCarbs
        self.highProtein = highProtein
        self.forDiabetics = forDiabetics
    }
}
