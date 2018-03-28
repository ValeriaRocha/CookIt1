//
//  Ingrediente.swift
//  CookIt1
//
//  Created by Valeria Rocha Sepulveda  on 27/03/18.
//  Copyright © 2018 Valeria Rocha Sepulveda . All rights reserved.
//

import UIKit

class Ingrediente: NSObject {

    var nombre : String
    var cantidad : Double
    var unidad : String
    var sugerencia : String?
    
    init(nombre : String, cantidad : Double, unidad : String, sugerencia : String?){
        self.nombre = nombre
        self.cantidad = cantidad
        self.unidad = unidad
        self.sugerencia = sugerencia
    }
    
}
