//
//  ViewControllerSearch.swift
//  CookIt1
//
//  Created by Valeria Rocha Sepulveda  on 28/03/18.
//  Copyright © 2018 Valeria Rocha Sepulveda . All rights reserved.
//

import UIKit

class ViewControllerSearch: UIViewController, UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate {

    //tableViews
    @IBOutlet weak var tableView: UITableView! //este es el de dificultad
    @IBOutlet weak var tableViewCategorias: UITableView!
    @IBOutlet weak var tableViewNacionalidad: UITableView!
    @IBOutlet weak var tableViewNoIng: UITableView!
    @IBOutlet weak var tableViewNutricion: UITableView!
    @IBOutlet weak var tableViewOrdenar: UITableView!
    
    
    //text Fields
    @IBOutlet weak var tfDuracion: UITextField!
    @IBOutlet weak var tfPrecio: UITextField!
    @IBOutlet weak var tfRanking: UITextField!
    @IBOutlet weak var tfMinCalorias: UITextField!
    @IBOutlet weak var tfMaxCalorias: UITextField!
    
    
    
    let nivel = ["Baja", "Media", "Alta"]
    var caractNutricion = [String]()
    var categorias = ListaRecetas.baseRecetas.getCategorias()
    
    
    var ing = ListaRecetas.baseRecetas.getStringsAllIngredients()
    var ingFilter = [String]()
    var ingSelect = [String]()
    var buscandoIng : Bool!
    
    var noIngFilter = [String]()
    var noIngSelect = [String]()
    var buscandoNoIng : Bool!
    var listaOrdenar = ["Calorias", "Duracion", "Precio", "Match"]
    var nacionalidades = [String]()
    
    //table View solitario no tiene amigos
    @IBOutlet weak var tableViewIngredientes: UITableView!
    
    //search bars
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var searchBarNoIng: UISearchBar!
    
    //lista de todas las recetas
    var recetas = [Receta]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        categorias = ListaRecetas.baseRecetas.getCategorias()
        ing = ListaRecetas.baseRecetas.getStringsAllIngredients()
        caractNutricion = ["Sin Gluten", "Sin Lactosa", "Vegetariana", "Vegana", "Fuente de fibra", "Alto en Carbohidratos", "Bajo en Carbohidratos", "Alto en Proteinas", "Aceptable para Diabeticos"]
        nacionalidades = ListaRecetas.baseRecetas.getNacionalidades()
        
        title = "Busqueda avanzada"

        tableView.allowsMultipleSelection = true
        tableViewCategorias.allowsMultipleSelection = true
        tableViewIngredientes.allowsMultipleSelection = true
        tableViewNoIng.allowsMultipleSelection = true
        tableViewNutricion.allowsMultipleSelection = true
        tableViewNacionalidad.allowsMultipleSelection = true

        searchBar.delegate = self
        searchBar.returnKeyType = UIReturnKeyType.done
        searchBar.placeholder = "Buscar Ingredientes"
        
        searchBarNoIng.delegate = self
        searchBarNoIng.returnKeyType = UIReturnKeyType.done
        searchBarNoIng.placeholder = "Buscar Ingredientes"
        
        recetas = ListaRecetas.baseRecetas.recetas
    
        buscandoIng = false
        buscandoNoIng = false
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - TableViews
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == self.tableView{
            return nivel.count
        }
        if tableView == self.tableViewCategorias {
            return categorias.count
        }
        if tableView == self.tableViewIngredientes{
            if(buscandoIng){
                return ingFilter.count
            } else {
                return ing.count
            }
        }
        if tableView == self.tableViewNoIng {
            if(buscandoNoIng){
                return noIngFilter.count
            } else {
                return ing.count
            }
        }
        if tableView == self.tableViewNutricion{
            return caractNutricion.count
        }
        if tableView == self.tableViewOrdenar{
            return listaOrdenar.count
        }
        if tableView == self.tableViewNacionalidad{
            return nacionalidades.count
        }
        
        return 0
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath)
        let font = UIFont(name: (cell.textLabel?.font.fontName)!, size:15)
        if tableView == self.tableView{
            cell.textLabel?.text = nivel[indexPath.row]
        }
        if tableView == self.tableViewNutricion{
            cell.textLabel?.text = caractNutricion[indexPath.row]
        }
        if tableView == self.tableViewNacionalidad{
            cell.textLabel?.text = nacionalidades[indexPath.row]
        }
        if tableView == self.tableViewOrdenar{
            cell.textLabel?.text = listaOrdenar[indexPath.row]
        }
        
        if tableView == self.tableViewCategorias{
            cell.textLabel?.text = categorias[indexPath.row]
        }
        if tableView == self.tableViewIngredientes{
            if(buscandoIng){
                cell.textLabel?.text = ingFilter[indexPath.row]
            } else {
                cell.textLabel?.text = ing[indexPath.row]
            }
        }
        if tableView == self.tableViewNoIng {
            if(buscandoNoIng){
                cell.textLabel?.text = noIngFilter[indexPath.row]
            } else {
                cell.textLabel?.text = ing[indexPath.row]
            }
        }
        cell.textLabel?.font = font
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 30
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //update ingSelect
        if tableView == self.tableViewIngredientes{
            if buscandoIng{
                ingSelect.append(ingFilter[indexPath.row])
            } else {
                ingSelect.append(ing[indexPath.row])
            }
        }
        if tableView == self.tableViewNoIng{
            if buscandoNoIng{
                noIngSelect.append(noIngFilter[indexPath.row])
            } else {
                noIngSelect.append(ing[indexPath.row])
            }
        }
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        //update ingSelect
        if tableView == self.tableViewIngredientes{
            if buscandoIng{
                //quitar el elemento al que le dio deselect
                let indice = ingSelect.index(of: ingFilter[indexPath.row])!
                ingSelect.remove(at: indice)
            } else {
                let indice = ingSelect.index(of: ing[indexPath.row])!
                ingSelect.remove(at: indice)
            }
        }
        if tableView == self.tableViewNoIng{
            if buscandoNoIng{
                //quitar el elemento al que le dio deselect
                let indice = noIngSelect.index(of: noIngFilter[indexPath.row])!
                noIngSelect.remove(at: indice)
            } else {
                let indice = noIngSelect.index(of: ing[indexPath.row])!
                noIngSelect.remove(at: indice)
            }
        }

    }
    
    // MARK: - SearchBar
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        if searchBar == self.searchBar {
            if searchBar.text == "" || searchBar.text == nil {
                buscandoIng = false
                view.endEditing(true)
                tableViewIngredientes.reloadData()
                //recorrer ing, si el ingrediente esta contenido por ingSelect, hacer un selectRow
                for i in 0 ..< ing.count{
                    if ingSelect.contains(ing[i]){
                        let indice = IndexPath(row: i, section: 0)
                        tableViewIngredientes.selectRow(at: indice, animated: true, scrollPosition: .none)
                    }
                }
            } else {
                buscandoIng = true
                ingFilter = ing.filter({$0.lowercased().hasPrefix(searchText.lowercased())})
                tableViewIngredientes.reloadData()
                //recorrer ingFilter, si el ingrediente esta contenido por ingSelect, hacer un selectRow
                for i in 0 ..< ingFilter.count{
                    if ingSelect.contains(ingFilter[i]){
                        let indice = IndexPath(row: i, section: 0)
                        tableViewIngredientes.selectRow(at: indice, animated: true, scrollPosition: .none)
                    }
                }
            }
        }
        
        if searchBar == self.searchBarNoIng {
            if searchBarNoIng.text == "" || searchBarNoIng.text == nil {
                buscandoNoIng = false
                view.endEditing(true)
                tableViewNoIng.reloadData()
                //recorrer ing, si el ingrediente esta contenido por ingSelect, hacer un selectRow
                for i in 0 ..< ing.count{
                    if noIngSelect.contains(ing[i]){
                        let indice = IndexPath(row: i, section: 0)
                        tableViewNoIng.selectRow(at: indice, animated: true, scrollPosition: .none)
                    }
                }
            } else {
                buscandoNoIng = true
                noIngFilter = ing.filter({$0.lowercased().hasPrefix(searchText.lowercased())})
                tableViewNoIng.reloadData()
                //recorrer ingFilter, si el ingrediente esta contenido por ingSelect, hacer un selectRow
                for i in 0 ..< noIngFilter.count{
                    if noIngSelect.contains(noIngFilter[i]){
                        let indice = IndexPath(row: i, section: 0)
                        tableViewNoIng.selectRow(at: indice, animated: true, scrollPosition: .none)
                    }
                }
            }
        }
        
        
        
    }
    
    
    //  MARK: - Procesamiento
    @IBAction func click(_ sender: UIButton) {
        
        recetas = ListaRecetas.baseRecetas.recetas

        print("Ingredientes seleccionados")
        for i in 0 ..< recetas.count{
            print(recetas[i].nombre)
        }
        print("\n")
        
        //filtrar en base a dificultad
        var selectedLevels = [String]()
        if let indices = tableView.indexPathsForSelectedRows{
            selectedLevels = getSelected(forIndices: indices, forArray: nivel)
        } else {
            selectedLevels = nivel
        }
        recetas = recetas.filter({selectedLevels.contains($0.dificultad)})
        
        print("Ingredientes seleccionados dif")
        for i in 0 ..< recetas.count{
            print(recetas[i].nombre)
        }
        print("\n")

        //filtar en base a categorias
        var categoriasSelect = [String]()
        if let indices = tableViewCategorias.indexPathsForSelectedRows{
            categoriasSelect = getSelected(forIndices: indices, forArray: categorias)
        } else {
            categoriasSelect = categorias
        }
        recetas = recetas.filter({categoriasSelect.contains($0.categoria)})
        
        print("Ingredientes seleccionados cat")
        for i in 0 ..< recetas.count{
            print(recetas[i].nombre)
        }
        print("\n")
        
        //filtar en base a nacionalidad
        var nacioSelect = [String]()
        if let indices = tableViewNacionalidad.indexPathsForSelectedRows{
            nacioSelect = getSelected(forIndices: indices, forArray: nacionalidades)
        } else {
            nacioSelect = nacionalidades
        }
        recetas = recetas.filter({nacioSelect.contains($0.nacionalidad!)})
        
        print("Ingredientes seleccionados nac")
        for i in 0 ..< recetas.count{
            print(recetas[i].nombre)
        }
        print("\n")
        
        //filtar en base a duracion
        if let duracion = Double(tfDuracion.text!){
             recetas = recetas.filter({$0.duracion <= duracion})
        }
        
        print("Ingredientes seleccionados dur")
        for i in 0 ..< recetas.count{
            print(recetas[i].nombre)
        }
        print("\n")
        
        //filtar en base a precio
        if let precio = Double(tfPrecio.text!){
            recetas = recetas.filter({$0.precio <= precio})
        }
        
        print("Ingredientes seleccionados precio")
        for i in 0 ..< recetas.count{
            print(recetas[i].nombre)
        }
        print("\n")

        //filtar en base a ranking
        if let rank = Double(tfRanking.text!){
            recetas = recetas.filter({$0.rank >= rank})
        }
        
        print("Ingredientes seleccionados rank")
        for i in 0 ..< recetas.count{
            print(recetas[i].nombre)
        }
        print("\n")
        
        //Si no selecciono nada el usuario, tomar en cuenta todos los ingredientes
        if ingSelect.count != 0 {
            //sacar el porcentaje de los ingredientes que hacen match a los seleccionados por cada receta
            for rec in 0..<recetas.count{
                var ingredientes = [String]()
                var cantIng = 0.0
                
                //sacar los nombres de los ingredientes que tiene esa receta
                for ing in 0..<recetas[rec].ingredientes.count{
                    ingredientes.append(recetas[rec].ingredientes[ing].nombre)
                }
                
                //por cada ingrediente seleccionado por el usuario, checar si la receta en cuestion lo contiene
                for i in 0..<ingSelect.count {
                    if ingredientes.contains(ingSelect[i]){
                        cantIng += 1
                    }
                }
                
                //sacar porcentaje de match de los ingredientes
                recetas[rec].ingMatch = (cantIng/Double(ingSelect.count)) * 100.0
            }
            
            //*************************************
            //elimar las que tengan un match de 0
            var rec = 0
            while rec < recetas.count {
                if recetas[rec].ingMatch == 0{
                    recetas.remove(at: rec)
                    rec -= 1
                }
                rec += 1
            }
            
            //*************************************
        }
        
        print("Ingredientes seleccionados ing")
        for i in 0 ..< recetas.count{
            print(recetas[i].nombre)
        }
        print("\n")
        
        //filtar en base a ingredientes no quiero, noIngSelect
        var rec = 0
        while rec < recetas.count{
        
            var ingredientes = [String]()
            
            //sacar los nombres de los ingredientes que tiene esa receta
            for ing in 0..<recetas[rec].ingredientes.count{
                ingredientes.append(recetas[rec].ingredientes[ing].nombre)
            }
            
            //por cada ingrediente no deseado seleccionado por el usuario, checar si la receta en cuestion lo contiene
            for i in 0..<noIngSelect.count {
                if ingredientes.contains(noIngSelect[i]){
                    recetas.remove(at: rec)  //si contiene un ingrediente no deseado, no incluir receta
                    rec -= 1
                }
            }
            rec += 1
        }
        
        print("Ingredientes seleccionados ing no")
        for i in 0 ..< recetas.count{
            print(recetas[i].nombre)
        }
        print("\n")
        
        //filtar en base a calorias
        if let calorias = Double(tfMaxCalorias.text!){
            recetas = recetas.filter({$0.nutricion.calorias <= calorias})
        }
        if let caloriasMin = Double(tfMinCalorias.text!){
            recetas = recetas.filter({$0.nutricion.calorias >= caloriasMin})
        }
        
        print("Ingredientes seleccionados calorias")
        for i in 0 ..< recetas.count{
            print(recetas[i].nombre)
        }
        print("\n")
        
        //filtrar en base a caracteristicas de nutricion
        rec = 0
        var cumple = true
        while rec < recetas.count{
            cumple = true
            if let indices = tableViewNutricion.indexPathsForSelectedRows{
                var i = 0
                while i < indices.count && cumple{
                    switch(indices[i].row){
                    case 0:
                        if recetas[rec].nutricion.gluten{
                            recetas.remove(at: rec)
                            cumple = false
                            rec -= 1
                        }
                        break;
                    case 1:
                        if recetas[rec].nutricion.lactosa{
                            recetas.remove(at: rec)
                            cumple = false
                            rec -= 1
                        }
                        break;
                    case 2:
                        if !recetas[rec].nutricion.vegetariana{
                            recetas.remove(at: rec)
                            cumple = false
                            rec -= 1
                        }
                        break;
                    case 3:
                        if !recetas[rec].nutricion.vegana{
                            recetas.remove(at: rec)
                            cumple = false
                            rec -= 1
                        }
                        break;
                    case 4:
                        if !recetas[rec].nutricion.fuenteFibra{
                            recetas.remove(at: rec)
                            cumple = false
                            rec -= 1
                        }
                        break;
                    case 5:
                        if !recetas[rec].nutricion.highCarbs{
                            recetas.remove(at: rec)
                            cumple = false
                            rec -= 1
                        }
                        break;
                    case 6:
                        if !recetas[rec].nutricion.lowCarbs{
                            recetas.remove(at: rec)
                            cumple = false
                            rec -= 1
                        }
                        break;
                    case 7:
                        if !recetas[rec].nutricion.highProtein{
                            recetas.remove(at: rec)
                            cumple = false
                            rec -= 1
                        }
                        break;
                    case 8:
                        if !recetas[rec].nutricion.forDiabetics{
                            recetas.remove(at: rec)
                            cumple = false
                            rec -= 1
                        }
                        break;
                    default:
                        break;
                        
                    }
                    i += 1
                }
            }
            
            rec += 1
        }
        
        print("Ingredientes seleccionados nUTRI")
        for i in 0 ..< recetas.count{
            print(recetas[i].nombre)
        }
        print("\n")
        
        //ordenar : ["Calorias", "Duracion", "Precio", "Match"]
        if let seleccionado = tableViewOrdenar.indexPathForSelectedRow {
            switch(seleccionado.row){
            case 0:
                recetas.sort(by: {
                    if $0.nutricion.calorias !=  $1.nutricion.calorias{
                        return $0.nutricion.calorias < $1.nutricion.calorias
                    } else {
                        return $0.ingMatch > $1.ingMatch
                    }
                })
                break;
                
            case 1:
                recetas.sort(by: {
                    if $0.duracion !=  $1.duracion{
                        return $0.duracion < $1.duracion
                    } else {
                        return $0.ingMatch > $1.ingMatch
                    }
                })
                break;
                
            case 2:
                recetas.sort(by: {
                    if $0.precio !=  $1.precio{
                        return $0.precio < $1.precio
                    } else {
                        return $0.ingMatch > $1.ingMatch
                    }
                })
                break;
                
            case 3:
                recetas.sort(by: {
                    if $0.ingMatch !=  $1.ingMatch{
                        return $0.ingMatch > $1.ingMatch
                    } else {
                        return $0.nutricion.calorias < $1.nutricion.calorias
                    }
                })
                break;
                
                
                
            default:
                recetas.sort(by: {
                    if $0.ingMatch !=  $1.ingMatch{
                        return $0.ingMatch > $1.ingMatch
                    } else {
                        return $0.nutricion.calorias < $1.nutricion.calorias
                    }
                })
                break;
            }
        } else {
            recetas.sort(by: {
                if $0.ingMatch !=  $1.ingMatch{
                    return $0.ingMatch > $1.ingMatch
                } else {
                    return $0.nutricion.calorias < $1.nutricion.calorias
                }
            })
        }
        
       
        
    }
    
    func getSelected(forIndices : [IndexPath], forArray : [String]) -> [String]{
        
        var selected = [String]()
        for i in 0 ..< forIndices.count{
            selected.append(forArray[forIndices[i].row])
        }
        return selected
    }
    
    
    


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vista = segue.destination as! TableViewControllerRecetas
        vista.recetas = recetas
        
        if ingSelect.count != 0 {
            vista.mostrarMatch = true
        } else{
            vista.mostrarMatch = false
        }
        
    }


}
