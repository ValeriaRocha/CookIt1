//
//  Receta.swift
//  CookIt1
//
//  Created by Valeria Rocha Sepulveda  on 27/03/18.
//  Copyright © 2018 Valeria Rocha Sepulveda . All rights reserved.
//

import UIKit

class Receta: NSObject {

    var nombre : String
    var dificultad : String
    var duracion : Double
    var categoria : String
    var ingredientes : [Ingrediente]
    var opiniones : [Opinion]
    var precio : Double
    var nutricion : InfoNutrimental
    var url : String
    var imagen : UIImage
    
    init(nombre : String, dificultad : String, duracion : Double, categoria : String, ingredientes : [Ingrediente], opiniones : [Opinion], precio : Double, nutricion : InfoNutrimental, url : String, imagen : UIImage){
        self.nombre = nombre
        self.dificultad = dificultad
        self.duracion = duracion
        self.categoria = categoria
        self.ingredientes = ingredientes
        self.opiniones = opiniones
        self.precio = precio
        self.nutricion = nutricion
        self.url = url
        self.imagen = imagen
    }
    
    func getRank() -> Double {
        var rank = 0
        
        for i in 0 ... (opiniones.count - 1){
            rank += opiniones[i].ranking
        }
        
        return Double(rank) / Double(opiniones.count)
    }
    
}
