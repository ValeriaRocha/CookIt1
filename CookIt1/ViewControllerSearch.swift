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
    
    
    //switch
    @IBOutlet weak var switchIng: UISwitch!
    
    
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
    var listaOrdenar = ["Calorias", "Duracion", "Precio"]
    
    @IBOutlet weak var tableViewIngredientes: UITableView!
    
    //search bars
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var searchBarNoIng: UISearchBar!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        categorias = ListaRecetas.baseRecetas.getCategorias()
        ing = ListaRecetas.baseRecetas.getStringsAllIngredients()
        caractNutricion = ["Sin Gluten", "Sin Lactosa", "Vegetariana", "Vegana", "Fuente de fibra", "Alto en Carbohidratos", "Bajo en Carbohidratos", "Alto en Proteinas"]
        
        title = "Busqueda avanzada"

        tableView.allowsMultipleSelection = true
        tableViewCategorias.allowsMultipleSelection = true
        tableViewIngredientes.allowsMultipleSelection = true
        tableViewNoIng.allowsMultipleSelection = true
        tableViewNutricion.allowsMultipleSelection = true


        searchBar.delegate = self
        searchBar.returnKeyType = UIReturnKeyType.done
        searchBar.placeholder = "Buscar Ingredientes"
        
        searchBarNoIng.delegate = self
        searchBarNoIng.returnKeyType = UIReturnKeyType.done
        searchBarNoIng.placeholder = "Buscar Ingredientes"
        
        
    
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
//        if tableView == self.tableViewCategorias || tableView == self.tableView {
//            return 20
//        }
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
        
        if let indices = tableView.indexPathsForSelectedRows{
            for i in 0 ..< indices.count{
                print(nivel[indices[i].row])
            }
        }
        
        if let indices = tableViewCategorias.indexPathsForSelectedRows{
            for i in 0 ..< indices.count{
                print(categorias[indices[i].row])
            }
        }
        
        print("Ingredientes seleccionados")
        for i in 0 ..< ingSelect.count{
            print(ingSelect[i])
        }
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
