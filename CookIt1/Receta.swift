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
    var rank : Double
    var instrucciones : String
    var nacionalidad : String?
    
    init(nombre : String, dificultad : String, duracion : Double, categoria : String, ingredientes : [Ingrediente], opiniones : [Opinion], precio : Double, nutricion : InfoNutrimental, url : String, imagen : UIImage, rank : Double, instrucciones : String, nacionalidad : String?){
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
        self.rank = rank
        self.instrucciones = instrucciones
        self.nacionalidad = nacionalidad
    }
    
    func updateRank() -> Void{
        var ranking = 0
        
        for i in 0 ... (opiniones.count - 1){
            ranking += opiniones[i].ranking
        }
        
        rank = Double(ranking) / Double(opiniones.count)
    }
    
}

//gluten free: segmented control
//categorias con table View?
// dificultad con table view? 
