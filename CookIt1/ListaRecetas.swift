//
//  ListaRecetas.swift
//  CookIt1
//
//  Created by Valeria Rocha Sepulveda  on 27/03/18.
//  Copyright © 2018 Valeria Rocha Sepulveda . All rights reserved.
//

import UIKit

class ListaRecetas: NSObject {
    
    //singleton para
    static var baseRecetas = ListaRecetas()

        //singleton
    static var baseRecetas = ListaRecetas()
    
    var recetas : [Receta]
    
    init(recetas : [Receta]){
        self.recetas = recetas
    }
    
    override init(){
        let receta = [Receta]()
        recetas = receta
    }
    
    func getCategorias() -> [String]{
        var categorias = [String]()
        for i in 0 ..< recetas.count {
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
    
    func getNacionalidades() -> [String]{
        var nac = [String]()
        
        for i in 0 ..< recetas.count {
            if let nacionalidad = recetas[i].nacionalidad{
                if !nac.contains(nacionalidad){
                    nac.append(nacionalidad)
                }
            }
        }
        
        return nac
        
    }
    
    func getStringsAllIngredients() -> [String] {
        
        var ingredientes = [String]()
        
        for i in 0 ..< recetas.count {
            for x in 0 ..< recetas[i].ingredientes.count{
                if !ingredientes.contains(recetas[i].ingredientes[x].nombre){
                    ingredientes.append(recetas[i].ingredientes[x].nombre)
                }
            }
        }
        
        ingredientes.sort()
        
        return ingredientes
    }
    
}


