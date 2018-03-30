//
//  ListaRecetas.swift
//  CookIt1
//
//  Created by Valeria Rocha Sepulveda  on 27/03/18.
//  Copyright © 2018 Valeria Rocha Sepulveda . All rights reserved.
//

import UIKit

class ListaRecetas: NSObject {

        //singleton
    static var baseRecetas = ListaRecetas()
    
    var recetas : [Receta]
    
    init(recetas : [Receta]){
        self.recetas = recetas
    }
    
    func getCategorias() -> [String]{
        var categorias = [String]()
        for i in 0 ... (recetas.count - 1){
            if !categorias.contains(recetas[i].categoria){
                categorias.append(recetas[i].categoria)
            }
        }
        
        return categorias
    }
    
    func getRecetas(forCategoria : String) -> [Receta] {
        var lista = [Receta]()
        
        for i in 0 ... (recetas.count - 1){
            if recetas[i].categoria == forCategoria{
                lista.append(recetas[i])
            }
        }
        return lista
    }
    
}


