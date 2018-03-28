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
    
    init(calorias : Double, gluten : Bool){
        self.calorias = calorias
        self.gluten = gluten
    }
}
